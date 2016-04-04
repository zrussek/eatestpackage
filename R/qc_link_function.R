################################################################
# Notes:                                                       #
# 	- purpose: this is an outline for the ea_link_qc_funtion   #
#                                                              #
#   - keywords: #brule #check #remove                          #  
################################################################



###################
# define function #
###################

qc_link_html <- function(
  
  formatted_link_name=NULL,
  outlier_decimal=.25,
  missing_percentage=5,
  duplicate_percentage=5,
  school_or_district="school",
  across_years_percentage=10,
  min_teacher_links=5,
  html_name_location=NULL)
  
  
  
{ 
  
  ################################
  # running on personal computer #
  ################################

    
   # create html and input parms
   rmarkdown::render(input = system.file("rmd/qc_link_markdown.Rmd", package="eatestpackage"),
                     params = list(
                     file_name      = formatted_link_name,
                     outlier_parm   = outlier_decimal,
                     missing_parm   = missing_percentage,
                     duplicate_parm = duplicate_percentage,
                     by_parm        = school_or_district,
                     across_years_parm = across_years_percentage,
                     min_students_parm = min_teacher_links),
                     clean = TRUE,
                     output_file   = html_name_location)
    
    

  
}


# # example
# qc_link_html(
# 
#   formatted_link_name = try_this,
#   html_name_location  = "N:/general/sullivan/quality_control/examples/link_example.html"
# 
# )


