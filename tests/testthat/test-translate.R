test_that("translate works for vector of codons", {
  expect_equal(translate(c("UUU", "UCU", "UAU", "UGU")), "FSYC")
})
