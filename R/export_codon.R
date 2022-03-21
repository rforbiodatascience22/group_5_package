
#' Title
#'export amino_acid
#' @param codons: function receives RNA codon and gives AminoAcid shortcut
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
  return(codon_string)
}


