#' Random DNA sequence
#'
#' @param length length of the dna sequence
#'
#' @returns random dna sequence
#' @export
random_dna <- function(length){
  bases <- sample(c("A", "T", "G", "C"), size = length, replace = TRUE)
  sequence <- paste0(bases, collapse = "")
  return(sequence)
}
