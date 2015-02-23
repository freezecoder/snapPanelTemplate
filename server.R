library(shiny)
library(ggplot2)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  output$distPlot <- renderPlot({
		data(mtcars)
		cars <- ggplot(mtcars, aes(y=factor(cyl), x=mpg)) + geom_point()
		cars
  })

  output$distPlot2 <- renderPlot({
		data(mtcars)
		cars <- ggplot(mtcars, aes(y=factor(cyl), x=mpg)) + geom_point()
		cars
  })


  output$distPlot1 <- renderPlot({
		data(mtcars)
		cars <- ggplot(mtcars, aes(y=factor(cyl), x=mpg)) + geom_point()
		cars
  })

  
output$table <- renderDataTable({
	as.data.frame(mtcars)
},options = list(lengthMenu = c(5, 30, 50), pageLength = 10))


output$table2 <- renderDataTable({
	as.data.frame(mtcars)
},options = list(lengthMenu = c(5, 30, 50), pageLength = 10))

})
