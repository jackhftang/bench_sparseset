Benchmark is the only criterion for testing truth. 

## Usage

```
nimble bench
```

## Result 

```
============================================================================
GlobalBenchmark                                 relative  time/iter  iters/s
============================================================================
GlobalBenchmark                                            260.18ps    3.84G
============================================================================
bench.nim                                       relative  time/iter  iters/s
============================================================================
initTable 64 sequential write                              418.51ns    2.39M
initDITab 64 sequential write                    112.97%   370.46ns    2.70M
initSparseSet 64 sequential write                161.02%   259.91ns    3.85M
""                                                           0.00fs      inf
initTable 64 write                                         411.09ns    2.43M
initDITab 64 write                               103.75%   396.24ns    2.52M
initSparseSet 64 write                           215.49%   190.77ns    5.24M
""                                                           0.00fs      inf
initTable 64 read                                          489.22ns    2.04M
initDITab 64 read                                211.60%   231.20ns    4.33M
initSparseSet 64 read                            267.69%   182.76ns    5.47M
""                                                           0.00fs      inf
initTable 64 del                                             1.18us  845.03K
initDITab 64 del                                  43.11%     2.75us  364.27K
initSparseSet 64 del                             189.89%   623.21ns    1.60M
""                                                           0.00fs      inf
initTable 64 clear                                         799.00ns    1.25M
initDITab 64 clear                                62.95%     1.27us  787.81K
initSparseSet 64 clear                           257.49%   310.30ns    3.22M
""                                                           0.00fs      inf
initTable 4096 sequential write                             40.30us   24.81K
initDITab 4096 sequential write                   70.27%    57.35us   17.44K
initSparseSet 4096 sequential write              240.24%    16.78us   59.61K
""                                                           0.00fs      inf
initTable 4096 write                                        42.68us   23.43K
initDITab 4096 write                              82.38%    51.80us   19.30K
initSparseSet 4096 write                         252.70%    16.89us   59.21K
""                                                           0.00fs      inf
initTable 4096 read                                         71.20us   14.04K
initDITab 4096 read                               54.98%   129.51us    7.72K
initSparseSet 4096 read                          513.16%    13.88us   72.07K
""                                                           0.00fs      inf
initTable 4096 del                                         113.31us    8.83K
initDITab 4096 del                                67.20%   168.61us    5.93K
initSparseSet 4096 del                           283.78%    39.93us   25.05K
""                                                           0.00fs      inf
initTable 4096 clear                                        63.70us   15.70K
initDITab 4096 clear                              75.92%    83.90us   11.92K
initSparseSet 4096 clear                         332.20%    19.18us   52.15K
""                                                           0.00fs      inf
initTable 1048576 sequential write                          74.03ms    13.51
initDITab 1048576 sequential write               319.97%    23.14ms    43.22
initSparseSet 1048576 sequential write          1033.91%     7.16ms   139.65
""                                                           0.00fs      inf
initTable 1048576 write                                     71.73ms    13.94
initDITab 1048576 write                          288.04%    24.90ms    40.15
initSparseSet 1048576 write                     1062.19%     6.75ms   148.07
""                                                           0.00fs      inf
initTable 1048576 read                                     120.05ms     8.33
initDITab 1048576 read                           267.56%    44.87ms    22.29
initSparseSet 1048576 read                       470.91%    25.49ms    39.23
""                                                           0.00fs      inf
initTable 1048576 del                                      144.07ms     6.94
initDITab 1048576 del                            156.40%    92.11ms    10.86
initSparseSet 1048576 del                        415.58%    34.67ms    28.85
""                                                           0.00fs      inf
initTable 1048576 clear                                     80.93ms    12.36
initDITab 1048576 clear                          331.74%    24.39ms    40.99
initSparseSet 1048576 clear                      853.03%     9.49ms   105.41
""                                                           0.00fs      inf
initTable 20971520 sequential write                           2.38s  420.80m
initDITab 20971520 sequential write              499.06%   476.19ms     2.10
initSparseSet 20971520 sequential write         1444.01%   164.57ms     6.08
""                                                           0.00fs      inf
initTable 20971520 write                                      2.32s  431.38m
initDITab 20971520 write                         454.20%   510.38ms     1.96
initSparseSet 20971520 write                    1137.91%   203.72ms     4.91
""                                                           0.00fs      inf
initTable 20971520 read                                       3.92s  254.92m
initDITab 20971520 read                          366.36%      1.07s  933.92m
initSparseSet 20971520 read                      622.44%   630.23ms     1.59
""                                                           0.00fs      inf
initTable 20971520 del                                        4.91s  203.81m
initDITab 20971520 del                           177.68%      2.76s  362.12m
initSparseSet 20971520 del                       466.64%      1.05s  951.05m
""                                                           0.00fs      inf
initTable 20971520 clear                                      2.41s  415.72m
initDITab 20971520 clear                         468.90%   513.01ms     1.95
initSparseSet 20971520 clear                    1167.71%   206.00ms     4.85
""                                                           0.00fs      inf
```
