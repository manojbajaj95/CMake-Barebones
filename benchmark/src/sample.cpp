#include <benchmark/benchmark.h>

template <typename... T>
constexpr auto sum(const T &... args) {
  return (... + args);
}

static void sum(benchmark::State &state) {
  for (auto _ : state) {
    sum(1, 2, 3);
  }
}

BENCHMARK(sum);

BENCHMARK_MAIN();