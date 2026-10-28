test_that("rna_codons works for expected input", {
  expect_equal(rna_codons("AAAUUUCCCGGG"), c("AAA", "UUU", "CCC", "GGG"))
})
