
# hyperfiner

<!-- badges: start -->
[![R-CMD-check](https://github.com/marcpaterno/hyperfiner/workflows/R-CMD-check/badge.svg)](https://github.com/marcpaterno/hyperfiner/actions)
<!-- badges: end -->

`hyperfiner` reads the JSON format output from
[hyperfine](https://github.com/sharkdp/hyperfine)

## Installation

You can install the current version of hyperfiner from
[GitHub](https://github.com/marcpaterno/hyperfiner) with:

``` r
install.packages("devtools") # if you don't already have it
devtools::install_github("marcpaterno/hyperfiner")
```

## Example

The packages provides the function `read_hyperfine_json`, which reads a
JSON file and returns a tibble:

``` r
library(hyperfiner)
x <- read_hyperfile_json("timing.json")
```

The returned tibble has two columns:

* `times`: the individual timing measurements from `hyperfine`
* `command`: the command that was timed
