
#' Title
#'export amino_acid
#' @param codons
#'
#' @return amino_acid
#' @export
#'
#' @examples
#'paste0(codon_table['AGU'], collapse = "")
#'"S"
#'
export_amino_acid <- function(codons){
  codon_string <- paste0(codon_table[codons], collapse = "")# collpse converts multiple strings into one character string
  return(codont_string)
}


export_amino_acid("ABC")
export_amino_acid("AUGU")
export_amino_acid("AUG")
