MESSAGE(STATUS "Looking for Mongoose Librairies...")

find_path(MONGOOSE_DIR mongoose.h ${CMAKE_SOURCE_DIR}/3rdparty/*)
mark_as_advanced(MONGOOSE_DIR)
include_directories(${MONGOOSE_DIR})
set(MONGOOSE_SRC ${MONGOOSE_DIR}/mongoose.c)
set(MONGOOSE_LICENSE ${MONGOOSE_DIR}/LICENSE)