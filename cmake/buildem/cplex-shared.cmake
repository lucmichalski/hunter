CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

# This cmake script can be used to locate cplex and generate shared libraries from 
# Find cplex, and convert its static libraries into shared ones, as described in the pgmlink readme:
# https://github.com/bekaus/pgmlink

# From the command-line, this can be achieved with something like:
# (Linux)
# g++ -fpic -shared -Wl,-whole-archive libcplex.a -Wl,-no-whole-archive -o libcplex.so
# g++ -fpic -shared -Wl,-whole-archive libilocplex.a -Wl,-no-whole-archive -o libilocplex.so
# g++ -fpic -shared -Wl,-whole-archive libconcert.a -Wl,-no-whole-archive -o libconcert.so

# (Mac OS X)
# g++ -fpic -shared -Wl,-all_load libcplex.a -Wl,-noall_load -o libcplex.dylib
# g++ -fpic -shared -Wl,-all_load libconcert.a -Wl,-noall_load -o libconcert.dylib
# g++ -fpic -shared -Wl,-all_load libilocplex.a -Wl,-noall_load -L. -L../../../../concert/lib/x86-64_osx/static_pic -lcplex -lconcert -o libilocplex.dylib


# Clear previously found location so we force it to be found again.
set(CPLEX_LIBRARY CPLEX_LIBRARY-NOTFOUND)
set(CPLEX_CONCERT_LIBRARY CPLEX_CONCERT_LIBRARY-NOTFOUND)
set(CPLEX_ILOCPLEX_LIBRARY CPLEX_ILOCPLEX_LIBRARY-NOTFOUND)

# Find the CPLEX static libraries (must already be installed somewhere)
find_package( Cplex REQUIRED )

if (APPLE)
    set(SHARED_CPLEX_COMPILE_FLAGS "-fpic -stdlib=libstdc++")
    set(SHARED_CPLEX_LINK_FLAGS_1 "-Wl,-all_load")
    set(SHARED_CPLEX_LINK_FLAGS_2 "-stdlib=libstdc++")
else()
    set(SHARED_CPLEX_COMPILE_FLAGS "-shared -fpic")
    set(SHARED_CPLEX_LINK_FLAGS_1 "-Wl,-whole-archive")
    set(SHARED_CPLEX_LINK_FLAGS_2 "-Wl,-no-whole-archive")
endif()

##
## -- Create a shared library from libcplex.a
##
get_filename_component( CPLEX_LIBRARY_DIR ${CPLEX_LIBRARY} PATH )
set( CPLEX_LIBRARY_STATIC ${CPLEX_LIBRARY_DIR}/libcplex.a )

# Create an empty cpp file to use as a stand-in for cpp sources in the library
set (EMPTY_CPP ${CMAKE_CURRENT_BINARY_DIR}/empty.cpp)
file(WRITE ${EMPTY_CPP} "// This is an empty file generated by cplex-shared.cmake" )

add_library( cplex-shared SHARED ${EMPTY_CPP} )
target_link_libraries( cplex-shared ${SHARED_CPLEX_LINK_FLAGS_1} ${CPLEX_LIBRARY_STATIC} ${SHARED_CPLEX_LINK_FLAGS_2} )
set_target_properties( cplex-shared PROPERTIES 
                       COMPILE_FLAGS ${SHARED_CPLEX_COMPILE_FLAGS}
                       OUTPUT_NAME cplex
                       LIBRARY_OUTPUT_DIRECTORY ${CPLEX_LIBRARY_DIR} )

get_property(CPLEX_LIB_LOCATION TARGET cplex-shared PROPERTY LOCATION)


##
## -- Create a shared library from libconcert.a
##
get_filename_component( CONCERT_LIBRARY_DIR ${CPLEX_CONCERT_LIBRARY} PATH )
set( CONCERT_LIBRARY_STATIC ${CONCERT_LIBRARY_DIR}/libconcert.a )

add_library( concert-shared SHARED ${EMPTY_CPP} )
target_link_libraries( concert-shared ${SHARED_CPLEX_LINK_FLAGS_1} ${CONCERT_LIBRARY_STATIC} ${SHARED_CPLEX_LINK_FLAGS_2} )
set_target_properties( concert-shared PROPERTIES 
                       COMPILE_FLAGS ${SHARED_CPLEX_COMPILE_FLAGS}
                       OUTPUT_NAME concert
                       LIBRARY_OUTPUT_DIRECTORY ${CONCERT_LIBRARY_DIR} )

get_property(CONCERT_LIB_LOCATION TARGET concert-shared PROPERTY LOCATION)

##
## -- Create a shared library from libilocplex.a, which depends on the above two libraries.
##
get_filename_component( ILOCPLEX_LIBRARY_DIR ${CPLEX_ILOCPLEX_LIBRARY} PATH )
set( ILOCPLEX_LIBRARY_STATIC ${ILOCPLEX_LIBRARY_DIR}/libilocplex.a )

add_library( ilocplex-shared SHARED ${EMPTY_CPP} )
add_dependencies( ilocplex-shared cplex-shared concert-shared )
target_link_libraries( ilocplex-shared ${SHARED_CPLEX_LINK_FLAGS_1} ${ILOCPLEX_LIBRARY_STATIC} ${SHARED_CPLEX_LINK_FLAGS_2} ${CPLEX_LIB_LOCATION} ${CONCERT_LIB_LOCATION} )
set_target_properties( ilocplex-shared PROPERTIES 
                       COMPILE_FLAGS ${SHARED_CPLEX_COMPILE_FLAGS}
                       OUTPUT_NAME ilocplex
                       LIBRARY_OUTPUT_DIRECTORY ${ILOCPLEX_LIBRARY_DIR} )