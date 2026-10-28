#' Plot the frequency of amino acids
#'
#' @param aa_sequence Amino acid sequence#'
#'
#' @returns Bar plot of amino acid frequencies from the given amino acid sequence
#'
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#'
#' @export
#'
aa_counts_plot <- function(aa_sequence){
  aa_unique <- aa_sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(aa_unique, function(amino_acid) stringr::str_count(string = aa_sequence, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["amino_acid"]] <- rownames(counts)

  aa_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = amino_acid, y = Counts, fill = amino_acid)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(aa_plot)
}

