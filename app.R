library(shiny)
library(plotly)

# Interface utilisateur (UI)
ui <- fluidPage(
  titlePanel("Mon Application Shiny avec Plotly"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("num", 
                  "Choisissez un nombre :",  
                  min = 1, 
                  max = 100, 
                  value = 50)
    ),
    
    mainPanel(
      textOutput("valeur"),
      plotlyOutput("plot")
    )
  )
)

# Serveur (logique)
server <- function(input, output) {
  output$valeur <- renderText({
    paste("Vous avez choisi le nombre :", input$num)
  })
  
  output$plot <- renderPlotly({
    data <- data.frame(x = 1:input$num, y = (1:input$num)^2)
    plot_ly(data, x = ~x, y = ~y, type = 'scatter', mode = 'lines+markers',
            line = list(color = 'blue'), marker = list(color = 'red')) %>%
      layout(title = "Courbe quadratique", xaxis = list(title = "X"), yaxis = list(title = "X^2"))
  })
}

# Lancement de l'application
shinyApp(ui = ui, server = server)
