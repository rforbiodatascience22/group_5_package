#' Convert sequence to codons
#'
#' @param sequence RNA sequence
#' @param start The reading frame index
#'
#' @return Vector of codons
#' @export
#'
#' @examples
#' sequence_to_codons("UUGUCUAUCGAA", start = 1)
#' # [1] "UUG" "UCU" "AUC" "GAA"
sequence_to_codons <- function(sequence, start = 1){
  num_sequences <- nchar(sequence)
  codons <- substring(sequence,
                      first = seq(from = start, to = num_sequences-3+1, by = 3),
                      last = seq(from = 3+start-1, to = num_sequences, by = 3))
  return(codons)
}
