#' Title
#'
#' @param DNA_seq #String of DNA sequence
#'
#' @return # A RNA sequence
#' @export
#'
#' @examples
#' # "ATGC" > "AUGC"
DNA_to_RNA <- function(DNA_seq){
  RNA <- gsub("T", "U", DNA_seq)
  return(RNA)
}
