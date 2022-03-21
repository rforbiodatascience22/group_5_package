
#' Count amino acid abundances in protein sequence and yield barplot :)
#'
#' @param prot_seq Protein sequence for abundance count
#'
#' @return Barplot of AA abundances
#' @export
#' @importFrom magrittr `%>%`
#'
#'
#'
#' @examples
AA_abundance <- function(prot_seq){

  # Find unique amino acids in the protein sequence
  unique_aminoacids <- prot_seq %>%
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) %>%
    as.character() %>%
    unique()

  # Count the unique amino acids in the protein sequence
  counts <- sapply(unique_aminoacids, function(uniq_AAs) stringr::str_count(string = prot_seq, pattern =  uniq_AAs)) %>%
    as.data.frame()
  # Save the counts and aminoacids in dataframe
  colnames(counts) <- c("Counts")
  counts[["amino_acids"]] <- rownames(counts)
  # Plot dataframe with ggplot2
  abundance_plot <- counts %>%
    ggplot2::ggplot(ggplot2::aes(x = amino_acids, y = Counts, fill = amino_acids)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw()

  return(abundance_plot)
}


