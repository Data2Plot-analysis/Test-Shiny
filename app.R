library(shiny)
library(ggplot2)

# Interface utilisateur (UI)
ui <- fluidPage(
  titlePanel("Mon Application Shiny avec ggplot2"),
  
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
      plotOutput("plot")
    )
  )
)

# Serveur (logique)
server <- function(input, output) {
  output$valeur <- renderText({
    paste("Vous avez choisi le nombre :", input$num)
  })
  
  output$plot <- renderPlot({
    data <- data.frame(x = 1:input$num, y = (1:input$num)^2)
    ggplot(data, aes(x = x, y = y)) +
      geom_line(color = "blue") +
      geom_point(color = "red") +
      labs(title = "Courbe quadratique", x = "X", y = "X^2")
  })
}

# Lancement de l'application
shinyApp(ui = ui, server = server)