# Package

version       = "0.1.0"
author        = "Jack Tang"
description   = "Benchmark for sparse set"
license       = "MIT"
srcDir        = "src"


# Dependencies

requires "nim >= 1.4.2"
requires "nimbench"
requires "adix"
# not work 
# requires "https://github.com/planetis-m/sparseset"

task bench, "run benchmark":
  exec "nim c -r -d:release bench.nim"