test_that("base_replace works for upper case strings", {
  expect_equal(base_replace("ATCG"), "AUCG")
})
test_that("base_replace works for empty strings", {
  expect_equal(base_replace(""), "")
})
