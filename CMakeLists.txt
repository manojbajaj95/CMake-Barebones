cmake_minimum_required(VERSION 3.10)

# set the project name
project(barebones VERSION 1.0 LANGUAGES CXX C) 

# specify the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Location of additional cmake modules
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${PROJECT_SOURCE_DIR}/cmake )

# Export compile commands for ide
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Guard against in-source builds and bad build-type strings
include(ConfigSafeGuards)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)

include(CTest)
enable_testing()

set(BENCHMARK_ENABLE_TESTING OFF CACHE BOOL "Enable benchmark self-testing?")

set(BENCHMARK_DOWNLOAD_DEPENDENCIES ON CACHE BOOL "Download dependencies?")

include(ConfigGBench)
include(ConfigGTest)

# Set include directories
include_directories(${PROJECT_INCLUDE_DIR})

add_subdirectory(src)
add_subdirectory(benchmark)
add_subdirectory(tests)