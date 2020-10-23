#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library (shiny)


# Define UI for viewer application

shinyUI(fluidPage(
    

    
    # Application title.
    titlePanel("NEXT WORD PREDICTION"),
    
        sidebarLayout(
            
        
            sidebarPanel(
                
                helpText("ENTER A WORD, OR SET OF WORDS TO GET THE NEXT WORD/PHRASE PREDICTED"),
                hr(),
                textInput("obs", "Enter Your Input Text Here:",value = "I",
                          placeholder = "Enter a word/a phrase"),
                submitButton("Submit"),
                hr(),
                h3(" PREDICTED NEXT WORD:"),
                textOutput("word_next"),
                hr(),
                verbatimTextOutput("verb"),
                hr(),
                h3("PREDICTED PHRASE:"),
                textOutput("next_phrase"),
                verbatimTextOutput("verb"),
                hr(),
                
                
            ),
            mainPanel(
                helpText("1 - ONCE THE INPUT IS ENTERED AND SUBMITTED, THE NEXT WORD OR PHRASE IS PREDICTED AND OUTPUTTED.", 
                         hr(),
                         "2 - YOUR INPUT MAY BE A SINGLE WORD OR SET OF WORDS.",
                         hr(),
                         "3- IF YOU DON'T SUBMIT ANY WORD,THE APP WILL SHOW AN ERROR MESSAGE. ",
                         hr(),
                         "4- GIVE ANY WORD OR CHOOSE WORD FROM THE 'PREDICTED NEXT WORDS' ",
                         hr()
                ),
                hr(),
                strong(code(textOutput('sentence'))),
                hr(),
                strong(code(textOutput('phrase'))),
                hr(),
                h3("Unigram=1 Word"),
                hr(),
                h3("Bigram = 2 Words"),
                hr(),
                h3("Trigram = 3 Words"),
                hr(),
                h3("Fourgram = 4 words"),
                helpText("THIS PREDICTION MODEL IS BASED ON KATZ-BACK OFF ALGORITHM"),
                hr()
            )
        )
))