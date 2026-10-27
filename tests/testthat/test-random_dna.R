test_that("random_dna returns a character", {
  expect_type(random_dna(10), "character")
})


test_that("random_dna returns a sequence of the requested length", {
  expect_equal(nchar(random_dna(10)), 10)
  expect_equal(nchar(random_dna(1)), 1)
  expect_equal(nchar(random_dna(100)), 100)
})

test_that("random_dna only contains A, T, C and G", {
  sequence <- random_dna(200)
  expect_match(sequence, "^[ATGC]+$")
})
