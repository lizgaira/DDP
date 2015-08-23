shinyUI(fluidPage(
  headerPanel(div(strong(h1('Body Mass Index calculator')), style="color:orangered")),
  
mainPanel(div(h4(p("The Body Mass Index (BMI) is considered the best proxy for body 
                            fat percentage among ratios of weight and height."), 
                   p("BMI ranges from underweight to obese and is commonly employed among children 
                            and adults to predict health outcomes.")), style="color:grey"), align="left"),
  
  mainPanel( h5(p("BMI allows health professionals to discuss weight 
                            problems more objectively with their patients. BMI was designed to be 
                            used as a simple means of classifying average sedentary (physically inactive) 
                            adult populations, with an average body composition. For these individuals, the 
                            current value recommendations are as follow: a BMI from 18.5 up to 25 may 
                            indicate optimal weight, a BMI lower than 18.5 suggests the person is 
                            underweight, a number from 25 up to 30 may indicate the person is overweight, 
                            and a number from 30 upwards suggests the person is obese."), 
                p(em(h6("[modified from https://en.wikipedia.org/wiki/Body_mass_index]"))))),
  fluidRow(
    column(2, numericInput('wt', 'Weight (kg)', value=FALSE, min=29.01, max=200)),
    column(2, numericInput('ht', 'Height (m)', value=FALSE, min=1.01, max=2.50))),
 

     mainPanel( h3(textOutput('text'))),
     mainPanel(plotOutput("plot"))
))