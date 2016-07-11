include(CMakePackageConfigHelpers)
include(hunter_test_string_not_empty)

function(hunter_install_curl_config)

    hunter_test_string_not_empty("${HUNTER_curl_VERSION}")
    hunter_test_string_not_empty("${HUNTER_PACKAGE_INSTALL_PREFIX}")
    hunter_test_string_not_empty("${HUNTER_SELF}")

    set(templates "${HUNTER_SELF}/cmake/templates")
    set(configs   "${HUNTER_PACKAGE_INSTALL_PREFIX}/lib/cmake/curl")

    if(NOT BUILD_SHARED_LIBS)
        set(TARGET_INTERFACE_COMPILE_DEFINITIONS "INTERFACE_COMPILE_DEFINITIONS SODIUM_STATIC")
    endif()

    write_basic_package_version_file("${configs}/curlConfig.cmake" VERSION "${HUNTER_curl_VERSION}" COMPATIBILITY ExactVersion)

    configure_file(
            "${templates}/curlConfig.cmake.in"
            "${configs}/curlConfig.cmake"
            @ONLY
    )

endfunction()


function(hunter_install_curl_targets)

    hunter_test_string_not_empty("${HUNTER_PACKAGE_INSTALL_PREFIX}")
    hunter_test_string_not_empty("${HUNTER_SELF}")
    hunter_test_string_not_empty("${TARGET_CONFIGURATION}")
    hunter_test_string_not_empty("${TARGET_LIB_FILE}")

    set(templates "${HUNTER_SELF}/cmake/templates")
    set(configs   "${HUNTER_PACKAGE_INSTALL_PREFIX}/lib/cmake/curl")

    configure_file(
            "${templates}/curlTargets.cmake.in"
            "${configs}/curlTargets-${TARGET_CONFIGURATION}.cmake"
            @ONLY
    )

endfunction()
