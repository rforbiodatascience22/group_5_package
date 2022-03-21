
#' Title
#'export Codon
#' @param codons
#'
#' @return codon string with aminoacid and codon
#' @export
#'
#' @examples
#'
export_codon <- function(codons){
  codon_string <- paste0(codon_table[codons], collapse = "")# collpse converts multiple strings into one character string
  return(codont_string)
}
