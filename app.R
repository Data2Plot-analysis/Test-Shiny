# app.R
source("global.R")  # Charge toutes les variables globales


# Lancement de l'application Shiny
shinyApp(ui = ui, server = server)