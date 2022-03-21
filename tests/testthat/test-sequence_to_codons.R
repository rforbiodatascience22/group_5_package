test_that("codons are always three long", {
  expect_equal(
    all(
      sapply(
        sequence_to_codons("AUUGUCUAAA", start=1),
        nchar
      ) == 3
    ), TRUE)
  expect_equal(
    all(
      sapply(
        sequence_to_codons("AUUGUCUAAAA", start=1),
        nchar
      ) == 3
    ), TRUE)
  expect_equal(
    all(
      sapply(
        sequence_to_codons("AUUGUCUAAAAA", start=1),
        nchar
      ) == 3
    ), TRUE)
})

test_that("the reading frame index works", {
  expect_equal(sequence_to_codons("AUUCG", start=1), c("AUU"))
  expect_equal(sequence_to_codons("AUUCG", start=2), c("UUC"))
  expect_equal(sequence_to_codons("AUUCG", start=3), c("UCG"))
})
