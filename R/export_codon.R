#' Convert codon vector to amino acids
#'
#' @param codons Vector of RNA codons
#'
#' @return Amino acid sequence
#' @export
#'
#' @examples
#'paste0(codon_table['AGU'], collapse = "")
#'"S"
#'
export_amino_acid <- function(codons){
  codon_string <- paste0(codon_table[codons], collapse = "")# collapse converts multiple strings into one character string
  codon_string <- stringr::str_replace_all(codon_string, "\\*", "_")
  return(codon_string)
}


