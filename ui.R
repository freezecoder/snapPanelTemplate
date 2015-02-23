
library(shinyGridster)

ys=1

bootstrapPage(
navbarPage("SeqMutation Viewer Grid",
  tabPanel(actionLink("goButton", "Analysis", icon = NULL)),
  tabPanel(a("Quals", href="../mutNeedle")),
  tabPanel(a("Ex", href="../rmd/mutationProfiler.Rmd")),
  tabPanel(
    h3(tags$p(textOutput("alcount")),
          style = "font-family: 'Arial', cursive;
        font-weight: bold; line-height: 1.1;
        color: gray")
     )
  )
,
 gridster(width = 150, height = 300,
	#First Row
   gridsterItem(col = 1, row = 1, sizex = 2, sizey = ys,
    wellPanel(
     sliderInput("n", "Input value:", min = 0, max = 50, value = 10)
    )
   ),
    gridsterItem(col = 2, row = 1, sizex = 2, sizey = ys,
    wellPanel(
     sliderInput("n", "Input value:", min = 0, max = 50, value = 10)
    )
   ),
   gridsterItem(col = 3, row = 1, sizex = 2, sizey = ys,
    wellPanel(
     sliderInput("n", "Input value:", min = 0, max = 50, value = 10)
    )
   ),
#Next Row
   gridsterItem(col = 1, row = 2, sizex = 3, sizey = 1,
     	plotOutput("distPlot2",height=250)
   ),
   gridsterItem(col = 2, row = 2, sizex = 3, sizey = 1,
     plotOutput("distPlot1", height = 250)
   ),
   gridsterItem(col = 3, row = 2, sizex = 3, sizey = 1,
     plotOutput("distPlot", height = 250)
   ,style =" background-color:  rgb(224,224,224); "),
#Third Row
   gridsterItem(col = 1, row = 3, sizex = 4, sizey = 2,
     wellPanel(
     h5("Zeee Data"),
     dataTableOutput("table" )
     ,style="background-color: rgb(204,224,224); ")
   ),
   gridsterItem(col = 2, row = 3, sizex = 4, sizey = 2,
    wellPanel(
     h5("Cross Data"),
     dataTableOutput("table2" )
    ,style =" background-color: rgb(204,229,255); ")
   )
 )
)
