library(shiny)

# Définition de l'interface utilisateur (UI)
ui - fluidPage(
  titlePanel(Mon Application Shiny),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput(num, 
                  Choisissez un nombre , 
                  min = 1, 
                  max = 100, 
                  value = 50)
    ),
    
    mainPanel(
      textOutput(valeur)
    )
  )
)

# Définition de la logique serveur
server - function(input, output) {
  output$valeur - renderText({
    paste(Vous avez choisi le nombre , input$num)
  })
}

# Lancement de l'application Shiny
shinyApp(ui = ui, server = server)