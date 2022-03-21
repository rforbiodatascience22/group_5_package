test_that("DNA sequence is generated correctly", {
  expect_equal(nchar(DNA_generator(7)), 7)
})
