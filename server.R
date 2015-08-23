

shinyServer(function(input, output, session) {

  # Combine the selected variables into a new data frame
  selectedData <- reactive({
           round(input$wt/(input$ht*input$ht),2)
  })
  
  
  output$text <- 
      renderText({paste("Your BMI is: ", ifelse(is.na(selectedData())==TRUE, "", selectedData()), sep="")})

  output$plot<-renderPlot({
      par(mar = c(5.1, 4.1, 0, 1)) 
                        barplot(table(factor(c("UNDERWEIGHT","OPTIMAL WEIGHT", "OVERWEIGHT"), 
                                levels = c("UNDERWEIGHT", "OPTIMAL WEIGHT",  "OVERWEIGHT"))), ylim=c(0,.5),
                                yaxt='n', ann=FALSE, horiz=F, col=c("lightskyblue2","deepskyblue3" , "skyblue4"))
                         points(ifelse(selectedData()<18.5, 0.7, ifelse(selectedData()>25, 3.1, 1.9)),
                                0.25, pch = 4, cex = 8, lwd = 8, col="orangered")}, height=200, width=800)

 })