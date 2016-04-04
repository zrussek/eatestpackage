################################################################
# Notes:                                                       #
# 	- purpose: this is an outline for the ea_test_qc_funtion   #
#                                                              #
#   - keywords: #brule #check #remove                          #  
################################################################



###################
# define function #
###################

qc_merge_html <- function(
  
  in_data_dems=NULL,
  in_data_link=NULL,
  in_data_test=NULL,
  in_val_outlier_decimal=.25,
  out_html_name_location=NULL)
  
  
  
{ 
  
  ################################
  # running on personal computer #
  ################################

    
   # create html and input parms
  rmarkdown::render(input = system.file("rmd/qc_merge_markdown.Rmd", package="eatestpackage"),
                    params = list(
                      dems_name     = in_data_dems,
                      link_name     = in_data_link,
                      test_name     = in_data_test,
                      outlier_parm  = in_val_outlier_decimal),
                    clean = TRUE,
                    output_file   = out_html_name_location)
    
    
}



# # example
# qc_test_html(
# 
#   formatted_test_name = formatted_test_review,
#   html_name_location  = "N:/general/sullivan/quality_control/test_example.html"
# 
# )
# #                       
  
  
  
  
  
  
  
  
  









