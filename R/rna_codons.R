#' Converting RNA sequence to Codons
#'
#' @param RNA sequence
#' @param Start of reading frame
#'
#' @returns Codons
#' @export
#'
#' @examples
#' rna_condons("AUGGCUUAA", 1)
#'
#' returns: ("AUG", "GCU", "UAA")
#'
rna_codons <- function(rna_sequence, start = 1){
  sequence_length <- nchar(rna_sequence)
  codons <- substring(rna_sequence,
                      first = seq(from = start, to = sequence_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = sequence_length, by = 3))
  return(codons)
}
