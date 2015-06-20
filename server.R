
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)


MPG<-function(am,wt,hp) as.numeric(am)*2.08371-2.878575*wt-0.037479*hp+34.002875

shinyServer(
  function(input,output) {
    output$id1<-renderPrint({input$am})
    output$id2<-renderPrint({input$wt})
    output$id3<-renderPrint({input$hp})
    output$prediction<-renderPrint({MPG(input$am,input$wt,input$hp)})
  }
)
