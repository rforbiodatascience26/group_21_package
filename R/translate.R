#' translate
#'
#' Takes as argument a vector of codons and returns the corresponding protein sequence string
#'
#' @param codons Vector of codons
#'
#' @returns Protein sequence string
#' @export
translate <- function(codons){
  prot_seq <- paste0(codon_table[codons], collapse = "")
  return(prot_seq)
}
