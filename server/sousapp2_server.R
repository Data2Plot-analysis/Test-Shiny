# server/sousapp2_server.R

sousapp2_server <- function(input, output, session) {
  

# Code serveur pour la sous-application 2
observeEvent(input$calculate, {
  # Calculer la somme des deux nombres
  result <- input$num1 + input$num2
  
  # Afficher le résultat
  output$result_sousapp2 <- renderText({
    paste("La somme est :", result)
  })
})
}