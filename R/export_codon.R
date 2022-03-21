export_codon <- function(codons){
  name_me2 <- paste0(codon_table[codons], collapse = "")# collpse converts multiple strings into one character string
  return(name_me2)
}
