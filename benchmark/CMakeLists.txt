cmake_minimum_required (VERSION 3.10)

find_package(Threads REQUIRED)

set(BENCHMARK_ENABLE_TESTING 
    OFF 
    CACHE BOOL "Suppressing benchmark's tests" FORCE
)

set(SOURCE_FILES 
    src/sample.cpp
)

add_executable(
    benchmarks 
    ${SOURCE_FILES}
)

target_include_directories(benchmarks 
    PUBLIC
    ${PROJECT_SOURCE_DIR}/include
)

target_link_libraries(benchmarks 
    benchmark
    ${CMAKE_THREAD_LIBS_INIT}
)