#' @importFrom magrittr `%>%`
#'
name_me1 <- function(prot_seq){
  unique_aminoacids <- prot_seq %>%
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) %>%
    as.character() %>%
    unique()

  counts <- sapply(unique_aminoacids, function(uniq_AAs) stringr::str_count(string = prot_seq, pattern =  uniq_AAs)) %>%
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["amino_acids"]] <- rownames(counts)

  name_me4 <- counts %>%
    ggplot2::ggplot(ggplot2::aes(x = amino_acids, y = Counts, fill = amino_acids)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw()

  return(name_me4)
}


