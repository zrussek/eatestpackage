

test_rmd <- function(my_name = NULL, html_name_location = NULL)
{
  # create html and input parms
  rmarkdown::render(input = system.file("rmd/test_html.Rmd", package="eatestpackage"),#"N:/general/sullivan/quality_control/qc_test_markdown.Rmd",
                    params = list(my_name = my_name),
                    clean = TRUE,
                    output_file   = html_name_location)

}


