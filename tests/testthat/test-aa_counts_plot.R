test_that("AA counts plot function works as intended", {
  p <- aa_counts_plot("PAGFRQVCKAFMAEPMFNTA")
  expect_true(inherits(p,"ggplot"))
})
