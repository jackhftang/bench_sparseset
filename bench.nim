import nimbench
import tables
import sparseset
import adix/ditab
import macros

template genSeqWrite(bench, constructor, size: untyped): untyped =
  bench(constructor size sequential write, m):
    # DITab do not support uint64 as key
    var d = constructor[uint32, int](size)
    for _ in 1..m:
      for i in 0 ..< size:
        d[uint32(i)] = i
    doNotOptimizeAway(d)
  # for some unknown reasons, macros.nim appear in the test report without discard
  discard

template genWrite(bench, constructor, size: untyped): untyped =
  bench(constructor size write, m):
    var d = constructor[uint32, int](size)
    for _ in 1..m:
      for i in 0 ..< size:
        d[uint32(i * 34952539 mod size)] = i
    doNotOptimizeAway(d)
  discard

template genRead(bench, constructor, size: untyped): untyped =
  bench(constructor size read, m):
    var d = constructor[uint32, int](size)
    # populate values
    for i in 0 ..< size:
      d[uint32(i)] = i

    # read
    for _ in 1..m:
      var v = 0
      for i in 0 ..< size:
        v += d[uint32(i * 34952539 mod size)]
      assert v == size * (size - 1) div 2

    doNotOptimizeAway(d)
  discard

template genDel(bench, constructor, size: untyped): untyped =
  bench(constructor size del, m):
    var d = constructor[uint32, int](size)
    for _ in 1..m:
      for i in 0 ..< size:
        d[uint32(i)] = i

      for i in 0 ..< size:
        d.del(uint32(i * 34952539 mod size))

      assert d.len == 0

    doNotOptimizeAway(d)
  discard

template genClear(bench, constructor, size: untyped): untyped =
  bench(constructor size clear, m):
    var d = constructor[uint32, int](size)
    for _ in 1..m:
      for i in 0 ..< size:
        d[uint32(i)] = i
      d.clear()
      assert d.len == 0
    doNotOptimizeAway(d)
  discard

template dummy(): untyped =
  # I am a separator
  bench("", m):
    memoryClobber()
  discard

macro genBenches(): untyped =
  result = newStmtList()
  const sizes = [
    64,
    4096,
    1 shl 20, # 1M
    20 * (1 shl 20)
    # 50 * (1 shl 20) # OOM
  ]
  let ops = [
    ident"genSeqWrite", 
    ident"genWrite", 
    ident"genRead", 
    ident"genDel", 
    ident"genClear"
  ]
  for size in sizes:
    for op in ops:
        result.add newCall(op, ident"bench", ident"initTable", newLit(size))
        result.add newCall(op, ident"benchRelative", ident"initDITab", newLit(size))
        result.add newCall(op, ident"benchRelative", ident"initSparseSet", newLit(size))
        result.add newCall(ident"dummy")

genBenches()

runBenchmarks()
