cmake_minimum_required (VERSION 3.10)

find_package(Threads REQUIRED)

set(SOURCE_FILES src/test.cpp )

add_executable(tests ${SOURCE_FILES} )

target_include_directories(tests PUBLIC ${PROJECT_SOURCE_DIR}/include)

set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)

target_link_libraries(tests PUBLIC gtest gmock_main) 
