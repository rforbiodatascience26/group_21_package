#' base_replace
#' Takes a sequence of bases and replaces every instance of "T" with "U"
#'
#' @param seq1 Sequence to have T's converted to U's
#'
#' @returns Sequence with U's instead of T's
#' @export
#'
#' @examples
#' seq1 <- c("A","T","C","G")
#' base_replace(seq1)
base_replace <- function(seq1){
  seq2 <- gsub("T", "U", seq1)
  return(seq2)
}
