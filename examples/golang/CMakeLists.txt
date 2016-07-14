## Modified by Luc Michalski - 2016
cmake_minimum_required(VERSION 3.0)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

## Project / Version

	set(PROJECT_NAME "TestApplication")
	set(PROJECT_VERSION "0.0.1")
        set(PROJECT_LANGUAGES "Go")
	project(${PROJECT_NAME} LANGUAGES ${PROJECT_LANGUAGES} VERSION ${PROJECT_VERSION})

## Dependencies
#	hunter_add_package(Golang)
#	find_package(Golang REQUIRED)

## Sources

	set(SOURCE_FILES main.go)

## Executable

	add_executable(TestApplicationGo ${SOURCE_FILES})
