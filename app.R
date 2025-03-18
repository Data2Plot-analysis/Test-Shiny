library(shiny)

# Interface utilisateur (UI)
ui <- fluidPage(
  titlePanel("Mon Application Shiny"),  # Ajout des guillemets autour du texte
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("num", 
                  "Choisissez un nombre :",  # Ajout des guillemets
                  min = 1, 
                  max = 100, 
                  value = 50)
    ),
    
    mainPanel(
      textOutput("valeur")
    )
  )
)

# Serveur (logique)
server <- function(input, output) {
  output$valeur <- renderText({
    paste("Vous avez choisi le nombre :", input$num)  # Ajout des guillemets
  })
}

# Lancement de l'application
shinyApp(ui = ui, server = server)
