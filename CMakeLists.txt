cmake_minimum_required(VERSION 3.10)

# set the project name
project(PROJECT_NAME VERSION 1.0)

# specify the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

#set(PROJECT_INCLUDE_DIR ${PROJECT_SOURCE_DIR}/include)
#set(PROJECT_BIN_DIR ${PROJECT_SOURCE_DIR}/bin)
#set(PROJECT_LIB_DIR ${PROJECT_SOURCE_DIR}/lib)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)

# add the executable
include_directories(${PROJECT_INCLUDE_DIR})

add_subdirectory(src)
# add_subdirectory(tests)