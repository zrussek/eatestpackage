################################################################
# Notes:                                                       #
# 	- purpose: this is an outline for the ea_dems_qc_funtion   #
#                                                              #
#   - keywords: #brule #check #remove                          #  
################################################################



###################
# define function #
###################

qc_dems_html <- function(
  
  formatted_test_name=NULL,
  outlier_decimal=.25,
  missing_percentage=5,
  duplicate_percentage=5,
  html_name_location=NULL)
  
  

{
  ################################
  # running on personal computer #
  ################################
    
    # create html and input parms
    rmarkdown::render(input = system.file("rmd/qc_dems_markdown.Rmd", package="eatestpackage"),
                      params = list(
                      file_name     = formatted_test_name,
                      outlier_parm  = outlier_decimal,
                      missing_parm  = missing_percentage,
                      duplicate_parm= duplicate_percentage),
                      clean = TRUE,
                      output_file   = html_name_location)
    
    
  
  

}


# # example
# qc_dems_html(
#   
#   formatted_test_name = formatted_test_review,
#   html_name_location  = "N:/general/sullivan/quality_control/dems_example.html"
#   
# )
                      
