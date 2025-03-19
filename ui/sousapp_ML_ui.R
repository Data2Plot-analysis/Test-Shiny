sousapp_ML_ui <- function() {
  # Ajouter un élément de menu pour cette sous-application
  liste_menuitems[[length(liste_menuitems) + 1]] <- menuItem(
    "Présentation", tabName = "website", icon = icon("home")
  )
  
  # Ajouter un onglet (tabItem) pour cette sous-application
  liste_tabitems[[length(liste_tabitems) + 1]] <- tabItem(
    tabName = "website",
    
    fluidPage(
      theme = shinytheme("flatly"),

      
      div(style = "height: 5vw;"),  # Cela crée un espace vertical équivalent à 5% de la largeur de l'écran.
      
      
    
      
      
 
      
      
      
      fluidRow(
        style = "display: flex; justify-content: center; align-items: center; width: 100%; 
           flex-wrap: nowrap; padding: 3vw; margin: 0; background-color: #03192b; color: white;",
        
        # Colonne pour le texte des Mentions Légales
        div(style = "flex: 1 1 80%; text-align: left; font-size: 1.2vw; line-height: 1.6; font-family: 'Arial', sans-serif;", 
            HTML('
        <h2 style="font-size: 4vw; margin-bottom: 1vw;">Mentions Légales</h2>



        <h3>Éditeur du site</h3>
        <p><strong>Propriétaire :</strong> EI Kévin Cartelier</p>
        <p><strong>Statut juridique :</strong> Auto-entrepreneur (Entreprise Individuelle - EI)</p>
        <p><strong>Nom commercial :</strong> Data2Plot</p>
        <p><strong>SIREN :</strong> 939 102 646</p>
        <p><strong>SIRET :</strong> 93910264600014</p>
        <p><strong>Adresse :</strong> 2 allée France Gall, 49800 Trélazé, France</p>
        <p><strong>Email :</strong> <a href="mailto:data2plot@outlook.com" style="color: white;">data2plot@outlook.com</a></p>
        <p><strong>Téléphone :</strong> 07.69.06.47.60</p>

        <h3>Hébergement du site</h3>
        <p><strong>Hébergeur :</strong> AWS (Amazon Web Services)</p>
        <p><strong>Adresse :</strong> Amazon Web Services, Inc. P.O. Box 81226 Seattle, WA 98108-1226 États-Unis</p>

        <h3>Responsable de la publication</h3>
        <p><strong>Responsable :</strong> Kévin Cartelier</p>
        <p><strong>Contact :</strong> <a href="mailto:data2plot@outlook.com" style="color: white;">data2plot@outlook.com</a></p>
       
        <h3>Cookies</h3>
        <p>Ce site n\'utilise pas de cookies </p>

        
      ')
        )
      )
      
  
        

        
      ),
      
    
    div(style = "height: 10vw;"),  # Cela crée un espace vertical équivalent à 5% de la largeur de l'écran.
    
    
    
    
      
      
      
      
      
      
      
    )
  
}
