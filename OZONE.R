library(shiny)
library(shinythemes)

data(airquality)

ui <- fluidPage(
  
  theme = shinytheme("darkly"),
  
  tags$head(
    tags$style(HTML("
      body {
        background: linear-gradient(120deg, #1f2d3a, #2c3e50);
      }
      .box {
        background: rgba(255,255,255,0.06);
        padding: 14px;
        border-radius: 10px;
        text-align: center;
        color: white;
        margin-bottom: 12px;
      }
    "))
  ),
  
  titlePanel("Ozone Dashboard"),
  
  tabsetPanel(
    
    tabPanel("Overview",
             
             fluidRow(
               column(4, div(class="box", textOutput("avg"))),
               column(4, div(class="box", textOutput("max"))),
               column(4, div(class="box", textOutput("min")))
             ),
             
             br(),
             
             sidebarLayout(
               sidebarPanel(
                 sliderInput("bars", "Bars:", 5, 60, 25)
               ),
               
               mainPanel(
                 plotOutput("histPlot", height = "500px")
               )
             )
    ),
    
    tabPanel("Data",
             tableOutput("preview")
    )
  )
)

server <- function(input, output) {
  
  ozone_vals <- reactive({
    x <- airquality$Ozone
    x[!is.na(x)]
  })
  
  output$avg <- renderText({
    paste("Average", round(mean(ozone_vals()), 1))
  })
  
  output$max <- renderText({
    paste("Max", max(ozone_vals()))
  })
  
  output$min <- renderText({
    paste("Min", min(ozone_vals()))
  })
  
  output$histPlot <- renderPlot({
    
    vals <- ozone_vals()
    
    cuts <- seq(min(vals), max(vals),
                length.out = input$bars + 1)
    
    hist(
      vals,
      breaks = cuts,
      col = "#5DADE2",
      border = "#111",
      xlab = "Ozone",
      main = "Ozone Distribution"
    )
  })
  
  output$preview <- renderTable({
    head(airquality, 15)
  })
}

shinyApp(ui, server)