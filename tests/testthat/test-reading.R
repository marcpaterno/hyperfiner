test_that("reading JSON output works", {
  expected_times = as.double(c(
    "0.039962171745000004",
    "0.038572663745",
    "0.036782932745000003"
  ))

  d <-
    read_hyperfine_json("mdfind_data.json")
  expect_s3_class(d, "tbl_df")
  expect_named(d, c("times", "command"))
  expect_equal(d$times, expected_times)
  expect_equal(d$command, rep("mdfind kMDItemFSName==\"~/*.Rmd\"", 3))
})
