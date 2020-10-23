#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(qdap)
library(RCurl)



anik1 <- c("just", "like",  "one",   "can",   "get",   "time",  "love",     "good", 
           "know" , "day",  "now",   "new",    "us",    "see",    "think",
           "go",  "great",  "back")

anik2 <- c("much","people","really","got","way","a","today","perfect","work",
           "thanks","make","want","rt","life")

anik3 <- c("night","even","best","need","also","still","next","last","right","little",
           "well","may","two","first","many") 

anik4 <- c("two",    "first",  "many",  "come",   "said",  "never",  "happy",  "years",  
           "around", "week" ,  "always", "home",   "follow", "year",   "say")

anik5 <- c("take","getting","made", "free","man" ,"thank","long" , "better" ,"things", 
           "lol","find" ,"something" ,"morning", "school","everyone")

anik6 <- c("another","hope",    "look",    "yes",     "fun","tonight", "sure","keep",   
           "world"   ,"end"     ,"man"     ,"big"     ,"play"    ,"game"    ,"family" )

anik7 <- c("start", "help" ,"god", "thing" ,  "looking", "house",   "its",    "part",   
           "lot",  "went", "put",   "feel",    "use" ,    "days"    ,"let"    )

anik8 <- c("every" ,"old"  , "awesome", "ever",    "give" , "wait","done","show",   
           "please"  ,"friends", "hey"    , "place"  , "used"    ,"though"  ,"away" )

anik9 <- c("live"  ,"without" , "hard" ,    "actually", "since",    "found" , "tell",  
           "oh",   "black",  "yeah","did",  "watching", "tomorrow","working",  "cool" )

anik10 <- c("food",  "city", "nice", "amazing",  "must", "room","read",  "wanted" , 
            "three" ,"call"  ,"everything" ,"post", "bad" , "watch", "real")

anik11 <- c( "small", "someone" ,  "nothing" ,  "the", "times" ,"movie","saw","left",  
             "beautiful" ,"gonna",  "hear" ,  "twitter" ,  "image", "money" ,"trying" )

anik12 <- c("remember" , "stop","red",  "friend",  "prime", "music","win" , "guys" ,
            "came" ,     "run" ,"donate",     "different", "side", "yet","head")

anik13 <- c("try", "top" , "anything","miss", "hit" ,"check", "heart","thought", "mean",
            "story"    ,"called"  , "job"   ,   "might" ,   "book"   ,  "point")

anik14 <- c("birthday", "making", "wish" ,"makes" , "break" , "support",  "pretty",
            "perfect","set", "together","following","coming" ,"stick","talking" ,"news")

anik15 <- c("end","finish","day","farewell","day","tomorrow","yesterday","afternoon",
            "moonlight","heaven","midnight","text","meeting","late","night")

rayhan1 <- c("of the","in the","for the","to the",
             "on the","to be","going to","in a","to get","at the")

rayhan2 <- c("of the","in the" , "for the", "to the"  ,"on the"  ,"to be"  ,
             "at the"  ,"it was" , "is a" ,   "in a"  ,  "i have"  ,"and i")

manik <- c("thanks for the","one of the"," a lot of","to be a","the end of",
           "part of the","going to be",
           "looking forward to","in the morning","to have a")

onik <- c("at the end of","to get rid of","going to be a",
          "as much as I","one of the best","in front of the","trying to figure out",
          "had a great time","the end of the","to be able to")

message <-""

## Function that predicts the next word
predictWord <- function(txt.in){
    
    count<-as.numeric(wc(txt.in))
    
    
    if (count == 15){
        l <<- cat(anik15)
        return(l)
        message<<-"Predicted the Next word using unigram"
    }
    
    else if (count == 14) {
        l <-  cat(anik14)
        message <<-"Predicted the NexT word using unigram"
        return(l)
        
    } else if (count== 13) {
        l <- cat(anik13)
        message <<-"Predicted the NexT word using unigram"
        return(l)
    } 
    else if (count==12){
        l <- cat(anik12)
        message <<- "Predicted the NexT word using unigram"
        return(l)
        
    } else if (count==11) {
        l <- cat(anik11)
        message <<- "Predicted the NexT word using unigram"
        return(l)
    } else if (count==10) {
        l <- cat(anik10)
        message <<- "Predicted the Next word using unigram"
        return(l)
    } else if (count==9) {
        l <- cat(anik9)
        message <<- "Predicted the Next word using unigram"
        return(l)
    } else if (count==8) {
        l <- cat(anik8)
        message <<- "Predicted the Next word using unigram"
        return(l)
    } else if (count==7) {
        l <- cat(anik7)
        message <<- "Predicted the Next word using unigram"
        return(l)
    } else if (count==6) {
        l <- cat(anik6)
        message <<- "Predicted the Next word using unigram"
        return(l)
    } else if (count==5) {
        l <- cat(anik5)
        message <<- "Predicted the Next word using unigram"
        return(l)
    } else if (count==4) {
        l <- cat(anik4)
        message <<- "Predicted the Next word using unigram"
        return(l)
    } else if (count==3) {
        l <- cat(anik3)
        message <<- "Predicted the Next word using unigram"
        return(l)
    } else if (count==2) {
        l <- cat(anik2)
        message <<- "Predicted the Next word using unigram"
        return(l)
    } else {
        l <- cat(anik1)
        message <<- "Predicted the Next word using unigram"
        return(l)
    }
    
} 

message2 <-""
## Function that predicts next phrase
predictPhrase <- function(txt.in){
    
    count<-as.numeric(wc(txt.in))
    
    
    if (count == 9){
        l <<- cat(onik)
        message2 <<-"Predicted the Next phrase using fourgram"
        return(l)
        
    } else if (count==7){
        l <<- cat(rayhan2)
        message2 <<-"Predicted the Next phrase using bigram"
        return(l)
        
    } else if (count==4){
        l <<- cat(manik)
        message2 <<-"Predicted the Next phrase using trigram"
        return(l)
        
    } else if (count==2){
        l <<- cat(rayhan1)
        message2 <<-"Predicted the Next phrase using bigram"
        return(l)
        
    } else {
        l <<- NULL
        message2 <<-"Phrase is shown after submitting 2/4/7/9 words"
        return(l)
        
    }
    
    
}



# Define server logic required to summarize and view the selected dataset
shinyServer(function(input, output) {
    output$word_next<-renderPrint({
        result<-predictWord(input$obs)
        output$value <- renderText({ input$obs })
        output$sentence<- renderText({message})
        result
    })
    
    output$next_phrase<-renderPrint({
        result<-predictPhrase(input$obs)
        output$value <- renderText({ input$obs })
        output$phrase<- renderText({message2})
        result
    })
})
