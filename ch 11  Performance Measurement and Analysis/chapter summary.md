CHAPTER SUMMARY
 This chapter has presented the two aspects of computer
 performance: performance assessment and performance
 optimization. You should come away from this chapter
 knowing the key measurements of computer
 performance and how to correctly summarize them.
 Specifically, you should know that arithmetic averages
 are not appropriate for highly variable data and should
 not be used with rates or ratios. The geometric mean is
 useful when data are highly variable, but this mean
 cannot be used to predict performance. The harmonic
 mean is appropriate when comparing rates, and it is also
 useful as a performance predictor. However, when the
 harmonic mean is used to compare relative system
 performance, it is more sensitive to the choice of a
 reference machine than the geometric mean.
 We have explained a number of the more popular
 benchmarking programs and suites in this chapter. The
 most reliable of these are the benchmarks that are
 formulated and administrated by impartial oversight
 bodies such as SPEC and the TPC. Regardless of which
 ones you use, benchmarks should be interpreted in terms
 of your specific application. Remember, there is no single
 metric that is universally applicable to all situations.
Computer performance is directly dependent on
 computer component optimization. We examined the
 factors that influence the performance of the principal
 computer system components. Amdahl’s Law gives us a
 tool for determining the potential speedup due to various
 optimization techniques and places a ceiling on
 performance enhancements. Areas to consider for
 optimization include CPU performance, memory
 performance, and I/O. CPU performance is dependent
 on the program code, the compiler technology, the ISA,
 and the underlying technology of the hardware. Branch
 instructions have a dramatic effect on pipeline
 performance, which in turn has a significant effect on
 CPU performance. Branch prediction is one way to offset
 the complications introduced by branching. Fixed and
 static methods of branch prediction are less accurate
 than dynamic techniques, but are attainable at a lower
 cost.
 I/O performance is a function of both the logical and
 physical characteristics of disk drives. Short of replacing
 the hardware, we are unable to improve physical disk
 performance. But many aspects of logical disk
 performance lend themselves to tuning and
 optimization. These factors include disk utilization, file
 placement, and memory cache sizes. Good performance
 reporting tools not only provide thorough I/O statistics,
 but they also offer tuning suggestions.
System performance evaluation and optimization are two
 of the most important tasks of system managers. In this
 chapter, we have presented only general platform
independent information. Some of the most helpful and
 interesting information is found in vendor-provided
 manuals and training seminars. These resources are
 essential to the continued effectiveness of your system
tuning efforts