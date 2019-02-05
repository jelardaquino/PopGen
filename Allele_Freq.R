> sample(1:100, 20)
 [1]  57  46  69  72  94  76  54  53  27  26   4 100  73  40  97  87  66  75  83
[20]  77
> sample(1:100, 101)
Error in sample.int(length(x), size, replace, prob) : 
  cannot take a sample larger than the population when 'replace = FALSE'
> sample(1:100, 101, replace=TRUE)
  [1]  93  33  32  36   2 100  51  52   6  57  73   1   4  27  84  52  41  41
 [19]  82  11   5  52  16  99  41  82  84  78  40  34  64  68  90   5  12  29
 [37]  80   9  50  34  95  56   2  82  40   5   9  63  98  51   3  51  43  50
 [55]  92  49  59  32  69  49  33  80  86  32  82  27  20  34  12  69  89  83
 [73]   9  43  65  99   8  72  75  37  60  30  78  27  91  47  19  71   5  23
 [91]  79  14  17  58  12  76   7  86  64  47   6
> 
> 
> 
> sample(c("AA", "Aa", "aa"), 100, replace=TRUE)
  [1] "aa" "AA" "aa" "aa" "aa" "aa" "AA" "AA" "AA" "Aa" "aa" "aa" "Aa" "AA" "Aa"
 [16] "AA" "Aa" "aa" "AA" "aa" "Aa" "aa" "aa" "Aa" "aa" "AA" "AA" "AA" "AA" "Aa"
 [31] "AA" "Aa" "aa" "AA" "AA" "AA" "aa" "AA" "AA" "Aa" "AA" "Aa" "Aa" "Aa" "AA"
 [46] "aa" "AA" "aa" "AA" "AA" "Aa" "aa" "aa" "Aa" "aa" "aa" "aa" "AA" "aa" "aa"
 [61] "aa" "aa" "aa" "AA" "aa" "Aa" "aa" "AA" "AA" "aa" "aa" "aa" "Aa" "AA" "aa"
 [76] "Aa" "aa" "AA" "Aa" "AA" "aa" "AA" "Aa" "Aa" "AA" "Aa" "AA" "Aa" "aa" "Aa"
 [91] "Aa" "AA" "AA" "aa" "Aa" "Aa" "aa" "Aa" "aa" "aa"
> pop1 <- sample(c("AA", "Aa", "aa"), 100, replace=TRUE)
> pop2 <- sample(c("AA", "Aa", "aa"), 100, replace=TRUE)
> 
> pop1
  [1] "Aa" "AA" "AA" "aa" "AA" "AA" "aa" "aa" "AA" "AA" "AA" "aa" "Aa" "AA" "AA"
 [16] "AA" "AA" "AA" "Aa" "Aa" "Aa" "AA" "AA" "AA" "AA" "AA" "AA" "aa" "aa" "Aa"
 [31] "aa" "aa" "Aa" "Aa" "Aa" "aa" "aa" "Aa" "aa" "aa" "aa" "aa" "aa" "Aa" "AA"
 [46] "AA" "Aa" "AA" "Aa" "aa" "AA" "AA" "aa" "AA" "AA" "Aa" "aa" "AA" "Aa" "AA"
 [61] "Aa" "aa" "AA" "Aa" "aa" "Aa" "Aa" "Aa" "AA" "AA" "Aa" "AA" "Aa" "aa" "AA"
 [76] "Aa" "Aa" "AA" "Aa" "aa" "Aa" "Aa" "AA" "Aa" "aa" "aa" "AA" "Aa" "aa" "Aa"
 [91] "Aa" "Aa" "Aa" "aa" "AA" "aa" "AA" "AA" "aa" "Aa"
> pop2
  [1] "Aa" "AA" "Aa" "Aa" "AA" "Aa" "AA" "Aa" "aa" "Aa" "aa" "Aa" "Aa" "AA" "aa"
 [16] "aa" "Aa" "AA" "Aa" "AA" "AA" "aa" "aa" "Aa" "aa" "AA" "Aa" "aa" "Aa" "Aa"
 [31] "Aa" "Aa" "aa" "aa" "AA" "Aa" "aa" "Aa" "Aa" "Aa" "Aa" "aa" "AA" "Aa" "Aa"
 [46] "AA" "Aa" "aa" "Aa" "aa" "Aa" "aa" "Aa" "Aa" "aa" "aa" "aa" "AA" "Aa" "Aa"
 [61] "Aa" "aa" "Aa" "AA" "AA" "aa" "aa" "Aa" "aa" "Aa" "aa" "AA" "aa" "Aa" "Aa"
 [76] "AA" "aa" "Aa" "aa" "AA" "aa" "Aa" "aa" "Aa" "Aa" "aa" "Aa" "AA" "Aa" "aa"
 [91] "AA" "Aa" "AA" "aa" "AA" "Aa" "aa" "aa" "aa" "aa"
> replicate(10, "dummy")
 [1] "dummy" "dummy" "dummy" "dummy" "dummy" "dummy" "dummy" "dummy" "dummy"
[10] "dummy"
> replicate(20, sample(c("AA", "Aa", "aa"), 10, replace=TRUE)
+ )
      [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10] [,11] [,12] [,13]
 [1,] "Aa" "Aa" "AA" "Aa" "aa" "aa" "Aa" "aa" "Aa" "AA"  "AA"  "AA"  "Aa" 
 [2,] "AA" "AA" "aa" "Aa" "AA" "Aa" "Aa" "Aa" "aa" "aa"  "Aa"  "Aa"  "AA" 
 [3,] "Aa" "Aa" "AA" "aa" "AA" "AA" "aa" "aa" "Aa" "Aa"  "AA"  "aa"  "aa" 
 [4,] "aa" "aa" "aa" "aa" "Aa" "aa" "Aa" "Aa" "AA" "Aa"  "Aa"  "aa"  "AA" 
 [5,] "AA" "AA" "AA" "aa" "Aa" "AA" "Aa" "aa" "Aa" "aa"  "aa"  "aa"  "AA" 
 [6,] "Aa" "AA" "aa" "AA" "AA" "AA" "Aa" "Aa" "AA" "aa"  "Aa"  "aa"  "Aa" 
 [7,] "Aa" "AA" "aa" "AA" "Aa" "AA" "AA" "aa" "aa" "aa"  "Aa"  "Aa"  "AA" 
 [8,] "aa" "Aa" "Aa" "aa" "AA" "aa" "AA" "Aa" "AA" "aa"  "aa"  "aa"  "aa" 
 [9,] "AA" "AA" "Aa" "Aa" "Aa" "aa" "Aa" "AA" "Aa" "Aa"  "AA"  "AA"  "AA" 
[10,] "Aa" "aa" "AA" "Aa" "AA" "AA" "AA" "Aa" "aa" "aa"  "Aa"  "aa"  "aa" 
      [,14] [,15] [,16] [,17] [,18] [,19] [,20]
 [1,] "AA"  "AA"  "Aa"  "Aa"  "Aa"  "Aa"  "Aa" 
 [2,] "aa"  "Aa"  "AA"  "aa"  "AA"  "Aa"  "aa" 
 [3,] "Aa"  "AA"  "aa"  "AA"  "aa"  "aa"  "Aa" 
 [4,] "Aa"  "Aa"  "AA"  "aa"  "aa"  "Aa"  "AA" 
 [5,] "Aa"  "AA"  "Aa"  "aa"  "AA"  "Aa"  "aa" 
 [6,] "aa"  "aa"  "Aa"  "Aa"  "aa"  "aa"  "aa" 
 [7,] "AA"  "AA"  "Aa"  "AA"  "AA"  "Aa"  "Aa" 
 [8,] "AA"  "Aa"  "Aa"  "aa"  "aa"  "Aa"  "aa" 
 [9,] "Aa"  "AA"  "Aa"  "AA"  "aa"  "Aa"  "aa" 
[10,] "AA"  "aa"  "AA"  "Aa"  "AA"  "AA"  "aa" 
> replicate(20, sample(c("AA", "Aa", "aa"), 10, replace=TRUE), simplify=FALSE)
[[1]]
 [1] "aa" "aa" "AA" "AA" "Aa" "AA" "Aa" "Aa" "Aa" "Aa"

[[2]]
 [1] "Aa" "AA" "AA" "Aa" "aa" "AA" "AA" "AA" "Aa" "AA"

[[3]]
 [1] "AA" "Aa" "aa" "AA" "AA" "aa" "AA" "AA" "AA" "AA"

[[4]]
 [1] "Aa" "Aa" "Aa" "AA" "aa" "AA" "aa" "AA" "aa" "Aa"

[[5]]
 [1] "Aa" "AA" "Aa" "Aa" "aa" "aa" "Aa" "AA" "AA" "Aa"

[[6]]
 [1] "AA" "AA" "aa" "Aa" "Aa" "aa" "AA" "Aa" "AA" "Aa"

[[7]]
 [1] "AA" "Aa" "AA" "AA" "aa" "AA" "Aa" "aa" "Aa" "aa"

[[8]]
 [1] "Aa" "AA" "Aa" "AA" "AA" "Aa" "AA" "Aa" "Aa" "aa"

[[9]]
 [1] "AA" "AA" "aa" "Aa" "Aa" "aa" "Aa" "aa" "AA" "aa"

[[10]]
 [1] "AA" "Aa" "AA" "AA" "AA" "AA" "aa" "aa" "aa" "Aa"

[[11]]
 [1] "AA" "aa" "aa" "aa" "aa" "Aa" "aa" "AA" "aa" "aa"

[[12]]
 [1] "AA" "Aa" "aa" "aa" "AA" "Aa" "AA" "Aa" "Aa" "AA"

[[13]]
 [1] "AA" "aa" "aa" "Aa" "Aa" "Aa" "Aa" "AA" "aa" "Aa"

[[14]]
 [1] "aa" "aa" "Aa" "AA" "Aa" "aa" "aa" "AA" "aa" "Aa"

[[15]]
 [1] "AA" "AA" "AA" "Aa" "aa" "Aa" "AA" "Aa" "AA" "AA"

[[16]]
 [1] "Aa" "Aa" "Aa" "aa" "Aa" "aa" "aa" "Aa" "aa" "Aa"

[[17]]
 [1] "AA" "AA" "Aa" "AA" "Aa" "aa" "Aa" "AA" "Aa" "Aa"

[[18]]
 [1] "Aa" "aa" "AA" "Aa" "AA" "Aa" "Aa" "aa" "aa" "aa"

[[19]]
 [1] "Aa" "AA" "Aa" "Aa" "aa" "AA" "AA" "aa" "aa" "aa"

[[20]]
 [1] "aa" "AA" "aa" "AA" "Aa" "AA" "Aa" "AA" "aa" "aa"

> options(width=200)
> replicate(20, sample(c("AA", "Aa", "aa"), 100, replace=TRUE), simplify=FALSE)
[[1]]
  [1] "aa" "Aa" "Aa" "Aa" "aa" "Aa" "Aa" "aa" "Aa" "aa" "Aa" "Aa" "Aa" "AA" "AA" "Aa" "Aa" "aa" "Aa" "aa" "aa" "AA" "AA" "Aa" "AA" "AA" "AA" "AA" "AA" "Aa" "Aa" "Aa" "aa" "Aa" "Aa" "Aa" "AA" "aa" "AA"
 [40] "aa" "AA" "AA" "AA" "aa" "AA" "aa" "aa" "Aa" "AA" "aa" "Aa" "AA" "aa" "Aa" "Aa" "Aa" "Aa" "AA" "Aa" "Aa" "Aa" "Aa" "Aa" "aa" "AA" "AA" "Aa" "AA" "Aa" "AA" "AA" "AA" "AA" "AA" "AA" "aa" "Aa" "AA"
 [79] "aa" "Aa" "aa" "Aa" "aa" "AA" "Aa" "aa" "AA" "Aa" "aa" "aa" "AA" "AA" "aa" "Aa" "AA" "Aa" "aa" "aa" "AA" "aa"

[[2]]
  [1] "AA" "Aa" "aa" "aa" "AA" "AA" "AA" "aa" "Aa" "AA" "aa" "Aa" "Aa" "AA" "AA" "AA" "Aa" "Aa" "Aa" "aa" "Aa" "AA" "aa" "AA" "Aa" "AA" "AA" "Aa" "aa" "AA" "AA" "aa" "aa" "aa" "Aa" "Aa" "aa" "Aa" "AA"
 [40] "Aa" "aa" "Aa" "AA" "aa" "Aa" "Aa" "Aa" "Aa" "Aa" "aa" "aa" "AA" "Aa" "aa" "Aa" "AA" "aa" "Aa" "AA" "Aa" "Aa" "aa" "AA" "Aa" "Aa" "Aa" "aa" "aa" "aa" "Aa" "aa" "AA" "aa" "Aa" "aa" "AA" "aa" "AA"
 [79] "aa" "Aa" "AA" "AA" "aa" "AA" "Aa" "Aa" "Aa" "AA" "AA" "aa" "Aa" "AA" "AA" "Aa" "AA" "AA" "aa" "aa" "Aa" "AA"

[[3]]
  [1] "Aa" "AA" "Aa" "Aa" "Aa" "aa" "AA" "aa" "aa" "aa" "aa" "aa" "AA" "aa" "Aa" "aa" "aa" "AA" "Aa" "AA" "aa" "Aa" "Aa" "AA" "Aa" "AA" "aa" "AA" "aa" "AA" "AA" "aa" "AA" "AA" "aa" "AA" "aa" "AA" "Aa"
 [40] "aa" "aa" "aa" "Aa" "Aa" "Aa" "Aa" "Aa" "Aa" "AA" "AA" "aa" "AA" "aa" "aa" "aa" "aa" "aa" "Aa" "AA" "aa" "AA" "aa" "AA" "aa" "AA" "Aa" "AA" "aa" "AA" "aa" "Aa" "AA" "AA" "AA" "Aa" "AA" "Aa" "AA"
 [79] "AA" "aa" "Aa" "AA" "AA" "aa" "Aa" "Aa" "aa" "aa" "aa" "Aa" "AA" "aa" "Aa" "Aa" "Aa" "AA" "AA" "aa" "AA" "AA"

[[4]]
  [1] "AA" "aa" "Aa" "Aa" "Aa" "Aa" "aa" "Aa" "aa" "Aa" "AA" "AA" "aa" "AA" "aa" "AA" "aa" "aa" "Aa" "AA" "Aa" "aa" "AA" "Aa" "Aa" "Aa" "AA" "AA" "aa" "Aa" "Aa" "aa" "AA" "AA" "Aa" "Aa" "aa" "aa" "aa"
 [40] "Aa" "Aa" "Aa" "aa" "aa" "aa" "aa" "aa" "aa" "aa" "aa" "AA" "Aa" "aa" "Aa" "aa" "AA" "aa" "Aa" "AA" "aa" "aa" "AA" "AA" "aa" "Aa" "Aa" "aa" "Aa" "aa" "aa" "aa" "AA" "Aa" "AA" "AA" "aa" "aa" "AA"
 [79] "Aa" "Aa" "AA" "aa" "aa" "aa" "aa" "aa" "aa" "Aa" "AA" "Aa" "Aa" "AA" "aa" "AA" "aa" "AA" "Aa" "aa" "Aa" "Aa"

[[5]]
  [1] "aa" "Aa" "AA" "aa" "Aa" "Aa" "aa" "Aa" "aa" "AA" "Aa" "aa" "Aa" "Aa" "AA" "AA" "aa" "AA" "AA" "Aa" "aa" "AA" "aa" "Aa" "Aa" "Aa" "AA" "Aa" "aa" "AA" "aa" "aa" "Aa" "AA" "AA" "AA" "AA" "Aa" "aa"
 [40] "aa" "AA" "AA" "AA" "aa" "AA" "Aa" "Aa" "aa" "aa" "Aa" "AA" "Aa" "aa" "aa" "aa" "Aa" "Aa" "aa" "aa" "AA" "aa" "AA" "Aa" "Aa" "Aa" "aa" "AA" "Aa" "aa" "aa" "Aa" "AA" "AA" "AA" "AA" "AA" "Aa" "AA"
 [79] "Aa" "aa" "aa" "Aa" "AA" "Aa" "aa" "aa" "Aa" "Aa" "Aa" "Aa" "Aa" "Aa" "Aa" "AA" "aa" "aa" "aa" "Aa" "AA" "Aa"

[[6]]
  [1] "Aa" "Aa" "Aa" "AA" "Aa" "AA" "AA" "AA" "aa" "AA" "AA" "Aa" "aa" "aa" "aa" "AA" "Aa" "AA" "Aa" "aa" "Aa" "aa" "AA" "Aa" "aa" "aa" "aa" "AA" "AA" "aa" "aa" "aa" "aa" "Aa" "aa" "aa" "aa" "AA" "AA"
 [40] "Aa" "Aa" "Aa" "aa" "Aa" "AA" "aa" "aa" "aa" "AA" "Aa" "Aa" "aa" "AA" "Aa" "aa" "aa" "Aa" "aa" "Aa" "Aa" "Aa" "aa" "Aa" "AA" "Aa" "Aa" "aa" "AA" "AA" "AA" "Aa" "aa" "aa" "aa" "Aa" "aa" "AA" "aa"
 [79] "AA" "AA" "aa" "aa" "Aa" "Aa" "AA" "AA" "aa" "aa" "Aa" "AA" "AA" "Aa" "aa" "Aa" "aa" "aa" "AA" "AA" "AA" "aa"

[[7]]
  [1] "aa" "aa" "Aa" "Aa" "Aa" "aa" "AA" "AA" "AA" "aa" "AA" "AA" "Aa" "AA" "aa" "Aa" "Aa" "Aa" "AA" "AA" "aa" "Aa" "aa" "Aa" "Aa" "aa" "Aa" "AA" "AA" "aa" "aa" "aa" "AA" "AA" "Aa" "aa" "AA" "aa" "Aa"
 [40] "aa" "AA" "aa" "AA" "aa" "Aa" "AA" "aa" "AA" "AA" "aa" "AA" "AA" "AA" "AA" "AA" "AA" "Aa" "AA" "Aa" "AA" "aa" "AA" "aa" "AA" "AA" "Aa" "AA" "Aa" "aa" "Aa" "AA" "aa" "AA" "aa" "Aa" "AA" "Aa" "aa"
 [79] "Aa" "AA" "aa" "Aa" "Aa" "Aa" "aa" "aa" "aa" "AA" "aa" "aa" "Aa" "Aa" "AA" "aa" "AA" "AA" "aa" "AA" "AA" "Aa"

[[8]]
  [1] "aa" "AA" "AA" "aa" "Aa" "AA" "Aa" "aa" "Aa" "aa" "Aa" "aa" "Aa" "Aa" "aa" "AA" "AA" "aa" "aa" "Aa" "aa" "aa" "AA" "AA" "aa" "AA" "Aa" "Aa" "Aa" "aa" "AA" "Aa" "AA" "Aa" "AA" "aa" "aa" "Aa" "AA"
 [40] "AA" "Aa" "AA" "AA" "Aa" "AA" "Aa" "aa" "AA" "AA" "AA" "aa" "AA" "Aa" "AA" "AA" "AA" "AA" "aa" "aa" "aa" "aa" "Aa" "Aa" "aa" "AA" "Aa" "aa" "Aa" "Aa" "Aa" "AA" "aa" "aa" "Aa" "AA" "AA" "aa" "AA"
 [79] "Aa" "Aa" "Aa" "Aa" "aa" "AA" "AA" "aa" "AA" "Aa" "Aa" "aa" "aa" "aa" "AA" "aa" "AA" "Aa" "AA" "Aa" "Aa" "Aa"

[[9]]
  [1] "AA" "Aa" "aa" "AA" "AA" "Aa" "AA" "aa" "aa" "Aa" "AA" "Aa" "Aa" "aa" "AA" "AA" "aa" "Aa" "AA" "Aa" "aa" "Aa" "Aa" "aa" "Aa" "aa" "aa" "AA" "Aa" "Aa" "AA" "AA" "aa" "Aa" "Aa" "AA" "AA" "AA" "AA"
 [40] "aa" "Aa" "aa" "AA" "AA" "AA" "Aa" "aa" "Aa" "Aa" "AA" "Aa" "AA" "Aa" "Aa" "aa" "aa" "Aa" "aa" "aa" "AA" "Aa" "AA" "Aa" "AA" "AA" "Aa" "aa" "aa" "AA" "aa" "AA" "AA" "aa" "AA" "aa" "AA" "aa" "aa"
 [79] "aa" "AA" "AA" "AA" "aa" "aa" "aa" "aa" "aa" "AA" "AA" "AA" "Aa" "aa" "Aa" "aa" "Aa" "Aa" "Aa" "aa" "Aa" "AA"

[[10]]
  [1] "aa" "AA" "AA" "AA" "AA" "Aa" "AA" "aa" "aa" "Aa" "Aa" "AA" "Aa" "AA" "aa" "aa" "Aa" "Aa" "aa" "aa" "aa" "AA" "AA" "Aa" "AA" "AA" "aa" "aa" "Aa" "AA" "AA" "Aa" "aa" "AA" "aa" "Aa" "Aa" "AA" "Aa"
 [40] "aa" "Aa" "AA" "aa" "aa" "aa" "Aa" "aa" "AA" "Aa" "aa" "Aa" "Aa" "Aa" "aa" "AA" "aa" "aa" "AA" "Aa" "AA" "AA" "AA" "aa" "aa" "Aa" "aa" "AA" "Aa" "Aa" "AA" "aa" "AA" "AA" "AA" "AA" "aa" "AA" "Aa"
 [79] "Aa" "aa" "Aa" "aa" "AA" "AA" "Aa" "AA" "Aa" "AA" "aa" "aa" "Aa" "Aa" "aa" "AA" "aa" "Aa" "AA" "Aa" "AA" "Aa"

[[11]]
  [1] "aa" "aa" "Aa" "AA" "Aa" "aa" "Aa" "aa" "AA" "aa" "aa" "aa" "AA" "Aa" "AA" "aa" "aa" "Aa" "Aa" "aa" "AA" "AA" "aa" "AA" "aa" "AA" "AA" "AA" "aa" "Aa" "aa" "Aa" "AA" "aa" "AA" "Aa" "Aa" "aa" "AA"
 [40] "Aa" "AA" "aa" "AA" "aa" "aa" "AA" "aa" "Aa" "AA" "AA" "aa" "aa" "AA" "aa" "aa" "Aa" "Aa" "aa" "aa" "Aa" "Aa" "AA" "AA" "Aa" "Aa" "Aa" "aa" "aa" "aa" "aa" "aa" "aa" "aa" "aa" "Aa" "aa" "aa" "AA"
 [79] "AA" "AA" "AA" "aa" "Aa" "Aa" "AA" "aa" "aa" "Aa" "AA" "AA" "aa" "aa" "Aa" "Aa" "aa" "AA" "Aa" "Aa" "aa" "Aa"

[[12]]
  [1] "Aa" "Aa" "aa" "aa" "aa" "AA" "AA" "aa" "Aa" "aa" "Aa" "Aa" "aa" "Aa" "Aa" "AA" "AA" "Aa" "AA" "Aa" "aa" "aa" "Aa" "Aa" "aa" "AA" "Aa" "Aa" "Aa" "aa" "AA" "AA" "AA" "Aa" "aa" "AA" "AA" "aa" "AA"
 [40] "aa" "aa" "Aa" "aa" "Aa" "AA" "AA" "Aa" "Aa" "aa" "AA" "Aa" "aa" "aa" "AA" "aa" "Aa" "AA" "AA" "aa" "aa" "AA" "aa" "aa" "aa" "aa" "Aa" "Aa" "aa" "Aa" "Aa" "aa" "aa" "aa" "Aa" "aa" "Aa" "Aa" "AA"
 [79] "Aa" "Aa" "aa" "Aa" "Aa" "Aa" "AA" "Aa" "Aa" "Aa" "Aa" "Aa" "Aa" "AA" "Aa" "aa" "AA" "Aa" "aa" "Aa" "AA" "Aa"

[[13]]
  [1] "aa" "Aa" "AA" "Aa" "aa" "aa" "AA" "Aa" "AA" "Aa" "Aa" "Aa" "AA" "AA" "aa" "Aa" "Aa" "Aa" "aa" "aa" "aa" "Aa" "aa" "aa" "aa" "Aa" "aa" "Aa" "aa" "aa" "aa" "AA" "Aa" "Aa" "Aa" "aa" "Aa" "aa" "AA"
 [40] "AA" "aa" "aa" "AA" "AA" "AA" "aa" "Aa" "AA" "AA" "aa" "Aa" "AA" "aa" "AA" "aa" "Aa" "Aa" "Aa" "aa" "Aa" "AA" "Aa" "AA" "aa" "aa" "aa" "AA" "AA" "AA" "Aa" "aa" "aa" "AA" "Aa" "aa" "aa" "aa" "AA"
 [79] "aa" "aa" "Aa" "AA" "Aa" "aa" "AA" "aa" "AA" "aa" "aa" "AA" "aa" "aa" "Aa" "AA" "Aa" "Aa" "aa" "aa" "aa" "AA"

[[14]]
  [1] "AA" "AA" "aa" "aa" "AA" "aa" "AA" "aa" "Aa" "aa" "AA" "AA" "Aa" "aa" "Aa" "aa" "aa" "aa" "AA" "aa" "aa" "Aa" "Aa" "AA" "AA" "Aa" "AA" "aa" "AA" "aa" "Aa" "AA" "AA" "Aa" "Aa" "Aa" "Aa" "Aa" "AA"
 [40] "AA" "Aa" "Aa" "aa" "AA" "aa" "aa" "aa" "Aa" "AA" "AA" "Aa" "aa" "AA" "Aa" "AA" "aa" "aa" "aa" "AA" "AA" "AA" "aa" "Aa" "aa" "AA" "aa" "Aa" "Aa" "aa" "aa" "AA" "Aa" "AA" "Aa" "AA" "AA" "AA" "aa"
 [79] "Aa" "AA" "Aa" "Aa" "Aa" "Aa" "aa" "aa" "AA" "AA" "AA" "AA" "aa" "Aa" "Aa" "AA" "aa" "Aa" "aa" "Aa" "AA" "AA"

[[15]]
  [1] "AA" "aa" "AA" "AA" "aa" "AA" "AA" "aa" "AA" "AA" "Aa" "AA" "aa" "aa" "aa" "aa" "AA" "aa" "AA" "aa" "Aa" "AA" "aa" "Aa" "aa" "aa" "aa" "aa" "Aa" "aa" "AA" "Aa" "AA" "Aa" "aa" "aa" "AA" "aa" "aa"
 [40] "Aa" "Aa" "Aa" "AA" "aa" "aa" "Aa" "Aa" "AA" "aa" "AA" "aa" "aa" "Aa" "AA" "aa" "AA" "Aa" "aa" "Aa" "Aa" "Aa" "AA" "Aa" "Aa" "Aa" "aa" "aa" "AA" "Aa" "AA" "Aa" "Aa" "AA" "aa" "aa" "Aa" "Aa" "aa"
 [79] "aa" "AA" "aa" "AA" "Aa" "Aa" "aa" "Aa" "AA" "Aa" "AA" "aa" "Aa" "Aa" "aa" "Aa" "Aa" "Aa" "Aa" "aa" "Aa" "AA"

[[16]]
  [1] "AA" "aa" "aa" "Aa" "AA" "AA" "AA" "aa" "aa" "AA" "AA" "Aa" "AA" "Aa" "aa" "aa" "aa" "aa" "Aa" "aa" "aa" "Aa" "aa" "aa" "aa" "aa" "Aa" "Aa" "Aa" "Aa" "aa" "aa" "aa" "Aa" "AA" "Aa" "Aa" "Aa" "Aa"
 [40] "AA" "Aa" "aa" "aa" "aa" "aa" "aa" "aa" "aa" "Aa" "aa" "Aa" "AA" "Aa" "aa" "Aa" "Aa" "Aa" "aa" "Aa" "aa" "aa" "aa" "Aa" "AA" "aa" "AA" "Aa" "aa" "aa" "Aa" "aa" "Aa" "aa" "aa" "AA" "AA" "aa" "aa"
 [79] "Aa" "Aa" "aa" "Aa" "Aa" "Aa" "aa" "AA" "AA" "aa" "aa" "aa" "aa" "aa" "AA" "Aa" "Aa" "AA" "AA" "Aa" "Aa" "AA"

[[17]]
  [1] "AA" "AA" "AA" "Aa" "AA" "aa" "AA" "aa" "aa" "AA" "aa" "AA" "Aa" "Aa" "Aa" "Aa" "AA" "AA" "Aa" "AA" "AA" "AA" "AA" "AA" "aa" "Aa" "aa" "Aa" "AA" "Aa" "AA" "Aa" "AA" "aa" "aa" "AA" "AA" "Aa" "AA"
 [40] "AA" "Aa" "AA" "aa" "aa" "Aa" "aa" "Aa" "AA" "Aa" "Aa" "Aa" "Aa" "aa" "AA" "AA" "AA" "AA" "Aa" "Aa" "AA" "aa" "aa" "aa" "aa" "Aa" "aa" "aa" "Aa" "Aa" "aa" "Aa" "Aa" "Aa" "AA" "Aa" "Aa" "Aa" "aa"
 [79] "AA" "AA" "Aa" "Aa" "Aa" "Aa" "aa" "Aa" "AA" "AA" "AA" "AA" "aa" "Aa" "AA" "Aa" "aa" "AA" "Aa" "Aa" "Aa" "AA"

[[18]]
  [1] "AA" "Aa" "AA" "aa" "AA" "AA" "aa" "Aa" "aa" "Aa" "Aa" "AA" "AA" "aa" "AA" "AA" "Aa" "aa" "Aa" "Aa" "Aa" "aa" "Aa" "Aa" "AA" "Aa" "Aa" "aa" "aa" "Aa" "aa" "Aa" "AA" "aa" "Aa" "AA" "aa" "Aa" "Aa"
 [40] "aa" "AA" "Aa" "aa" "aa" "Aa" "AA" "AA" "AA" "aa" "aa" "aa" "Aa" "AA" "AA" "aa" "aa" "aa" "Aa" "Aa" "Aa" "aa" "Aa" "aa" "aa" "AA" "AA" "Aa" "Aa" "AA" "AA" "Aa" "Aa" "AA" "Aa" "AA" "aa" "AA" "aa"
 [79] "Aa" "aa" "aa" "aa" "Aa" "Aa" "AA" "Aa" "aa" "aa" "AA" "AA" "Aa" "Aa" "aa" "aa" "aa" "Aa" "Aa" "AA" "Aa" "AA"

[[19]]
  [1] "aa" "aa" "AA" "AA" "AA" "aa" "Aa" "aa" "AA" "Aa" "aa" "AA" "AA" "aa" "Aa" "aa" "Aa" "aa" "AA" "AA" "Aa" "AA" "aa" "Aa" "Aa" "Aa" "AA" "aa" "Aa" "Aa" "aa" "aa" "Aa" "AA" "Aa" "Aa" "Aa" "Aa" "aa"
 [40] "Aa" "Aa" "Aa" "aa" "Aa" "AA" "AA" "Aa" "Aa" "AA" "Aa" "aa" "Aa" "AA" "aa" "Aa" "AA" "AA" "AA" "Aa" "aa" "AA" "aa" "aa" "Aa" "AA" "Aa" "Aa" "Aa" "aa" "AA" "Aa" "AA" "aa" "Aa" "aa" "Aa" "aa" "Aa"
 [79] "aa" "Aa" "Aa" "Aa" "Aa" "AA" "AA" "Aa" "AA" "aa" "AA" "Aa" "aa" "aa" "AA" "Aa" "AA" "AA" "aa" "aa" "Aa" "aa"

[[20]]
  [1] "aa" "AA" "aa" "aa" "Aa" "Aa" "aa" "Aa" "Aa" "aa" "AA" "AA" "AA" "aa" "AA" "Aa" "Aa" "AA" "aa" "aa" "Aa" "AA" "aa" "AA" "Aa" "Aa" "Aa" "Aa" "AA" "Aa" "Aa" "AA" "Aa" "AA" "aa" "aa" "AA" "aa" "Aa"
 [40] "AA" "aa" "aa" "AA" "Aa" "AA" "AA" "AA" "Aa" "aa" "aa" "Aa" "Aa" "aa" "AA" "aa" "Aa" "aa" "AA" "aa" "aa" "Aa" "AA" "Aa" "Aa" "aa" "AA" "Aa" "aa" "aa" "aa" "Aa" "Aa" "Aa" "aa" "Aa" "Aa" "aa" "Aa"
 [79] "AA" "aa" "aa" "Aa" "AA" "Aa" "AA" "aa" "AA" "AA" "aa" "aa" "Aa" "Aa" "AA" "aa" "aa" "aa" "AA" "Aa" "aa" "Aa"

> pops<- replicate(20, sample(c("AA", "Aa", "aa"), 100, replace=TRUE), simplify=FALSE)
> class(pops)
[1] "list"
> str(pops)
List of 20
 $ : chr [1:100] "aa" "Aa" "AA" "Aa" ...
 $ : chr [1:100] "Aa" "Aa" "Aa" "aa" ...
 $ : chr [1:100] "AA" "Aa" "AA" "Aa" ...
 $ : chr [1:100] "Aa" "AA" "Aa" "Aa" ...
 $ : chr [1:100] "Aa" "AA" "AA" "Aa" ...
 $ : chr [1:100] "Aa" "aa" "aa" "AA" ...
 $ : chr [1:100] "AA" "aa" "aa" "AA" ...
 $ : chr [1:100] "aa" "aa" "Aa" "Aa" ...
 $ : chr [1:100] "AA" "AA" "Aa" "aa" ...
 $ : chr [1:100] "Aa" "AA" "AA" "AA" ...
 $ : chr [1:100] "AA" "aa" "AA" "Aa" ...
 $ : chr [1:100] "AA" "Aa" "aa" "Aa" ...
 $ : chr [1:100] "AA" "Aa" "aa" "Aa" ...
 $ : chr [1:100] "aa" "Aa" "AA" "aa" ...
 $ : chr [1:100] "Aa" "AA" "AA" "AA" ...
 $ : chr [1:100] "Aa" "aa" "AA" "aa" ...
 $ : chr [1:100] "AA" "Aa" "aa" "aa" ...
 $ : chr [1:100] "aa" "aa" "aa" "AA" ...
 $ : chr [1:100] "aa" "aa" "AA" "AA" ...
 $ : chr [1:100] "AA" "Aa" "AA" "AA" ...
> paste("pop", 1:20)
 [1] "pop 1"  "pop 2"  "pop 3"  "pop 4"  "pop 5"  "pop 6"  "pop 7"  "pop 8"  "pop 9"  "pop 10" "pop 11" "pop 12" "pop 13" "pop 14" "pop 15" "pop 16" "pop 17" "pop 18" "pop 19" "pop 20"
> paste("pop", 1:20, sep="")
 [1] "pop1"  "pop2"  "pop3"  "pop4"  "pop5"  "pop6"  "pop7"  "pop8"  "pop9"  "pop10" "pop11" "pop12" "pop13" "pop14" "pop15" "pop16" "pop17" "pop18" "pop19" "pop20"
> names(pops)<-paste("pop", 1:20, sep="")
> str(pops)
List of 20
 $ pop1 : chr [1:100] "aa" "Aa" "AA" "Aa" ...
 $ pop2 : chr [1:100] "Aa" "Aa" "Aa" "aa" ...
 $ pop3 : chr [1:100] "AA" "Aa" "AA" "Aa" ...
 $ pop4 : chr [1:100] "Aa" "AA" "Aa" "Aa" ...
 $ pop5 : chr [1:100] "Aa" "AA" "AA" "Aa" ...
 $ pop6 : chr [1:100] "Aa" "aa" "aa" "AA" ...
 $ pop7 : chr [1:100] "AA" "aa" "aa" "AA" ...
 $ pop8 : chr [1:100] "aa" "aa" "Aa" "Aa" ...
 $ pop9 : chr [1:100] "AA" "AA" "Aa" "aa" ...
 $ pop10: chr [1:100] "Aa" "AA" "AA" "AA" ...
 $ pop11: chr [1:100] "AA" "aa" "AA" "Aa" ...
 $ pop12: chr [1:100] "AA" "Aa" "aa" "Aa" ...
 $ pop13: chr [1:100] "AA" "Aa" "aa" "Aa" ...
 $ pop14: chr [1:100] "aa" "Aa" "AA" "aa" ...
 $ pop15: chr [1:100] "Aa" "AA" "AA" "AA" ...
 $ pop16: chr [1:100] "Aa" "aa" "AA" "aa" ...
 $ pop17: chr [1:100] "AA" "Aa" "aa" "aa" ...
 $ pop18: chr [1:100] "aa" "aa" "aa" "AA" ...
 $ pop19: chr [1:100] "aa" "aa" "AA" "AA" ...
 $ pop20: chr [1:100] "AA" "Aa" "AA" "AA" ...
> sum(pops$pop1 == "AA")
[1] 35
> sum(pops$pop1 == "Aa")
[1] 31
> sum(pops$pop1 == "aa")
[1] 34
> freq_A <- ((sum(pops$pop1 =="AA")*2) + sum(pops$pop1 == "Aa"))/200 
> freq_A
[1] 0.505
> (35*2+31)/200
[1] 0.505
> freq_a <- ((sum(pops$pop1 =="aa")*2) + sum(pops$pop1 == "Aa"))/200 
> freq_a
[1] 0.495
> freq_A + freq_a
[1] 1
> freq_A <- lapply(pops, function(x) ((sum(pops$pop1 =="AA")*2) + sum(pops$pop1 == "Aa"))/200) 
> freq_A
$pop1
[1] 0.505

$pop2
[1] 0.505

$pop3
[1] 0.505

$pop4
[1] 0.505

$pop5
[1] 0.505

$pop6
[1] 0.505

$pop7
[1] 0.505

$pop8
[1] 0.505

$pop9
[1] 0.505

$pop10
[1] 0.505

$pop11
[1] 0.505

$pop12
[1] 0.505

$pop13
[1] 0.505

$pop14
[1] 0.505

$pop15
[1] 0.505

$pop16
[1] 0.505

$pop17
[1] 0.505

$pop18
[1] 0.505

$pop19
[1] 0.505

$pop20
[1] 0.505

> freq_A <- lapply(pops, function(x) ((sum(x =="AA")*2) + sum(x == "Aa"))/200) 
> freq_A
$pop1
[1] 0.505

$pop2
[1] 0.515

$pop3
[1] 0.475

$pop4
[1] 0.525

$pop5
[1] 0.455

$pop6
[1] 0.5

$pop7
[1] 0.47

$pop8
[1] 0.52

$pop9
[1] 0.545

$pop10
[1] 0.465

$pop11
[1] 0.525

$pop12
[1] 0.545

$pop13
[1] 0.48

$pop14
[1] 0.475

$pop15
[1] 0.44

$pop16
[1] 0.515

$pop17
[1] 0.53

$pop18
[1] 0.51

$pop19
[1] 0.455

$pop20
[1] 0.535

> freq_a <- lapply(pops, function(x) ((sum(x =="aa")*2) + sum(x == "Aa"))/200) 
> freq_a
$pop1
[1] 0.495

$pop2
[1] 0.485

$pop3
[1] 0.525

$pop4
[1] 0.475

$pop5
[1] 0.545

$pop6
[1] 0.5

$pop7
[1] 0.53

$pop8
[1] 0.48

$pop9
[1] 0.455

$pop10
[1] 0.535

$pop11
[1] 0.475

$pop12
[1] 0.455

$pop13
[1] 0.52

$pop14
[1] 0.525

$pop15
[1] 0.56

$pop16
[1] 0.485

$pop17
[1] 0.47

$pop18
[1] 0.49

$pop19
[1] 0.545

$pop20
[1] 0.465

> unlist(freq_A) + unlist(freq_a)
 pop1  pop2  pop3  pop4  pop5  pop6  pop7  pop8  pop9 pop10 pop11 pop12 pop13 pop14 pop15 pop16 pop17 pop18 pop19 pop20 
    1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1 
> freq_A
$pop1
[1] 0.505

$pop2
[1] 0.515

$pop3
[1] 0.475

$pop4
[1] 0.525

$pop5
[1] 0.455

$pop6
[1] 0.5

$pop7
[1] 0.47

$pop8
[1] 0.52

$pop9
[1] 0.545

$pop10
[1] 0.465

$pop11
[1] 0.525

$pop12
[1] 0.545

$pop13
[1] 0.48

$pop14
[1] 0.475

$pop15
[1] 0.44

$pop16
[1] 0.515

$pop17
[1] 0.53

$pop18
[1] 0.51

$pop19
[1] 0.455

$pop20
[1] 0.535

> freq_a
$pop1
[1] 0.495

$pop2
[1] 0.485

$pop3
[1] 0.525

$pop4
[1] 0.475

$pop5
[1] 0.545

$pop6
[1] 0.5

$pop7
[1] 0.53

$pop8
[1] 0.48

$pop9
[1] 0.455

$pop10
[1] 0.535

$pop11
[1] 0.475

$pop12
[1] 0.455

$pop13
[1] 0.52

$pop14
[1] 0.525

$pop15
[1] 0.56

$pop16
[1] 0.485

$pop17
[1] 0.47

$pop18
[1] 0.49

$pop19
[1] 0.545

$pop20
[1] 0.465

> unlist(freq_A)
 pop1  pop2  pop3  pop4  pop5  pop6  pop7  pop8  pop9 pop10 pop11 pop12 pop13 pop14 pop15 pop16 pop17 pop18 pop19 pop20 
0.505 0.515 0.475 0.525 0.455 0.500 0.470 0.520 0.545 0.465 0.525 0.545 0.480 0.475 0.440 0.515 0.530 0.510 0.455 0.535 
> unlist(freq_a)
 pop1  pop2  pop3  pop4  pop5  pop6  pop7  pop8  pop9 pop10 pop11 pop12 pop13 pop14 pop15 pop16 pop17 pop18 pop19 pop20 
0.495 0.485 0.525 0.475 0.545 0.500 0.530 0.480 0.455 0.535 0.475 0.455 0.520 0.525 0.560 0.485 0.470 0.490 0.545 0.465 
> unlist(freq_A) + unlist(freq_a)
 pop1  pop2  pop3  pop4  pop5  pop6  pop7  pop8  pop9 pop10 pop11 pop12 pop13 pop14 pop15 pop16 pop17 pop18 pop19 pop20 
    1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1 
> plot(unlist(freq_A), unlist(freq_a), pch=2, cex=2, col='purple')
> 
> 
> 
> mule_pop1<- sample(c("AA", "Aa", "aa"), 5000, replace=TRUE)
> length(mule_pop1)
[1] 5000
> mule_A<- sum(mule_pop1 == "AA")*2) + sum(mule_pop1 == "Aa"))/10000
Error: unexpected ')' in "mule_A<- sum(mule_pop1 == "AA")*2)"
> mule_A<- ((sum(mule_pop1 == "AA")*2) + sum(mule_pop1 == "Aa"))/10000
> mule_A
[1] 0.4964
> mule_a<- 1 - mule_A
> mule_a
[1] 0.5036
> mule_drift_pop1 <- mule_pop1[1:3000]
> length(mule_drift_pop1)
[1] 3000
> mule_drift_A<- ((sum(mule_drift_pop1 == "AA")*2) + sum(mule_drift_pop1 == "Aa"))/6000
> mule_drift_A
[1] 0.4908333
> p <- mule_A
> q <- mule_a
> (p^2 + q^2 + (2*p*q))
[1] 1
> mule_drift_a <- 1- mule_drift_A
> mule_drift_a
[1] 0.5091667
> mule_drift_A
[1] 0.4908333
> p<- mule_drift_A
> q<- mule_drift_a
> (p^2 + q^2 + (2*p*q))
[1] 1
> 

