################################################################
# Notes:                                                       #
# 	- purpose: this is an outline for the ea_test_qc_funtion   #
#                                                              #
#   - keywords: #brule #check #remove                          #  
################################################################



###################
# define function #
###################

qc_test_html <- function(
  
  formatted_test_name=NULL,
  opt_print_histograms=1,
  outlier_decimal=.25,
  missing_percentage=5,
  duplicate_percentage=5,
  html_name_location=NULL)
  
  
  
{ 
  # create html and input parms
  rmarkdown::render(input = "N:/general/sullivan/quality_control/qc_test_markdown.Rmd",
                    params = list(
                      file_name     = formatted_test_name,
                      opt_graphs    = opt_print_histograms,
                      outlier_parm  = outlier_decimal,
                      missing_parm  = missing_percentage,
                      duplicate_parm= duplicate_percentage),
                    clean = TRUE,
                    output_file   = html_name_location)
  
}


# # example
# qc_test_html(
# 
#   formatted_test_name = formatted_test_review,
#   html_name_location  = "N:/general/sullivan/quality_control/test_example.html"
# 
# )
# #                       
  
  
  
  
  
  
  
  
  









