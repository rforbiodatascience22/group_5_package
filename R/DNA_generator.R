#' DNA sequence generator
#'
#' @param DNA_length Length of generated DNA
#'
#' @return A generated DNA sequence
#' @export
#'
#' @examples DNA_generator(36)

DNA_generator <- function(DNA_length){
  sample_DNA_vector <- sample(c("A", "T", "G", "C"),
                              size = DNA_length,
                              replace = TRUE)
  DNA_clean <- paste0(sample_DNA_vector,
                      collapse = "")
  return(DNA_clean)
}
