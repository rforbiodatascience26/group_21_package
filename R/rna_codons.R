#' Converting RNA sequence to Codons
#'
#' @param rna_sequence RNA sequence
#' @param start Start of reading frame
#'
#' @returns Codons
#' @export
#'
#' @examples
rna_codons <- function(rna_sequence, start = 1){
  sequence_length <- nchar(rna_sequence)
  codons <- substring(rna_sequence,
                      first = seq(from = start, to = sequence_length - 3 + 1, by = 3),
                      last = seq(from = 3 + start - 1, to = sequence_length, by = 3))
  return(codons)
}
