# global.R

# Chargement des bibliothèques
library(shiny)
library(shinydashboard)
library(readxl)
library(dplyr)
library(base64enc)

library(RColorBrewer)

library(datasets)
library(ggplot2)

library(readxl)
library(shinydashboard)
library(shinyjs)


library(htmlwidgets)
library(datasets)
library(ggplot2)


library(shinythemes)




# Liste pour stocker les éléments du menu et les onglets de contenu
liste_menuitems <- list()
liste_tabitems <- list()

# Initialisation des données
data_list <- list()

# Fonction pour charger les fichiers de données
charger_fichier <- function(nom_fichier, nom_variable, extension = "xlsx") {
  chemin <- file.path("data", paste0(nom_fichier, ".", extension))
  
  if (file.exists(chemin)) {
    if (extension == "xlsx") {
      data_list[[nom_variable]] <<- read_excel(chemin)
    } else if (extension == "png") {
      data_list[[nom_variable]] <<- dataURI(file = chemin, mime = "image/png")
    } else if (extension == "mp4") {
      # Créer une URI de données pour le fichier vidéo mp4
      data_list[[nom_variable]] <<- dataURI(file = chemin, mime = "video/mp4")
    } else if (extension == "gif") {
      # Créer une URI de données pour le fichier GIF
      data_list[[nom_variable]] <<- dataURI(file = chemin, mime = "image/gif")
    }
  } else {
    warning("Fichier manquant : ", chemin)
  }
}

# Charger les fichiers de données nécessaires
charger_fichier("radars", "radars")
charger_fichier("radars_sunburst_2", "radars_sunburst_2")
charger_fichier("QR_code_site_radars", "QR_code_site_radars", "png")
charger_fichier("villes", "villes")
charger_fichier("Logo_Entreprise", "Logo_Entreprise", "png")
charger_fichier("Photo_Moi", "Photo_Moi", "png")
charger_fichier("Argus", "Argus", "png")
charger_fichier("Linternaute", "Linternaute", "png")
charger_fichier("Video_Climats", "Video_Climats", "mp4")
charger_fichier("Méthode", "Méthode", "png")
charger_fichier("1", "1", "png")
charger_fichier("1_an", "1_an", "png")
charger_fichier("im_site_radars", "im_site_radars", "png")
charger_fichier("im_site_villes", "im_site_villes", "png")



# Construire l’interface utilisateur globale
v_fichiersUI <- list.files(path = "ui", pattern = "\\.R$", full.names = TRUE)
for (fichierUI in v_fichiersUI) {
  source(fichierUI, encoding = "UTF-8")
}

# Définir l'UI globale avec shinydashboard
ui <- dashboardPage(
  dashboardHeader(

    disable = TRUE
  ),
 dashboardSidebar(do.call(sidebarMenu, liste_menuitems)),
  dashboardBody(
    
    # JavaScript pour rétracter la sidebar au démarrage
    tags$script(HTML("$('body').addClass('sidebar-collapse');")),
    
    # Affichage du contenu dynamique
    uiOutput("page_content"), # Ce sera mis à jour dynamiquement
    
    do.call(tabItems, liste_tabitems))
)

# Définir la fonction serveur
server <- function(input, output, session) {
  # Stockage réactif des données pour les rendre accessibles partout dans l'application
  reactive_data <- reactiveValues(data = data_list)
  
  # Charger chaque fichier de logique serveur dans le dossier `server`
  v_fichiersServer <- list.files(path = "server", pattern = "\\.R$", full.names = TRUE)
  for (fichierServer in v_fichiersServer) {
    source(fichierServer, encoding = "UTF-8")
  }
  
  # Exemple d'accès aux données depuis le serveur principal
  observe({
    print(reactive_data$data[["radars"]])  # Vérifie le chargement de `radars`
  })
}
