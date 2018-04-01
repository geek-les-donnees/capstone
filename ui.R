
suppressPackageStartupMessages(c(
        library(shinythemes),
        library(shiny),
        library(tm),
        library(stringr),
        library(markdown),
        library(stylo)))

shinyUI(navbarPage("Data Science Capstone Project", 
                   
                   theme = shinytheme("spacelab"),
                   
############################### ~~~~~~~~1~~~~~~~~ ##############################  
## Tab 1 - Prediction

tabPanel("Next Word Prediction",
         
         tags$head(includeScript("./js/ga-shinyapps-io.js")),
         
         fluidRow(
                 
                 column(3),
                 column(6,
                        tags$div(textInput("text", 
                                  label = h3("Enter your text here:"),
                                  value = ),
                        tags$span(style="color:brown",("Only English words are supported.")),
                        br(),
                        tags$hr(),
                        h4("The next-word predicted is:"),
                        tags$span(style="color:brown",
                                  tags$strong(tags$h3(textOutput("predictedWord")))),
                        br(),
                        tags$hr(),
                        h4("Words entered by the user (you):"),
                        tags$em(tags$h4(textOutput("enteredWords"))),
                        align="center")
                        ),
                 column(3)
         )
),

############################### ~~~~~~~~F~~~~~~~~ ##############################

## Footer

tags$hr(),

tags$br(),

tags$span(style="color:grey", 
          tags$footer(("© 2016 - "), 
                       
                      tags$br(),
                      ("Built with"), tags$a(
                              href="http://www.r-project.org/",
                              target="_blank",
                              "R"),
                      ("&"), tags$a(
                              href="http://shiny.rstudio.com",
                              target="_blank",
                              "Shiny."),
#                       ("&"), tags$a(
#                               href="http://www.rstudio.com/products/shiny/shiny-server",
#                               target="_blank",
#                               "Shiny Server."),

                      align = "center"),
          
          tags$br()
)
)
)
