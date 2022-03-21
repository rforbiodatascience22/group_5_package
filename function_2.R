DNA_to_RNA <- function(DNA_seq){
  RNA <- gsub("T", "U", DNA_seq)
  return(RNA)
}
