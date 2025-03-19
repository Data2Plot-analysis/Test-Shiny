# ui.R

ui <- fluidPage(
  useShinyjs(),  # Active shinyjs

  tags$head(
    tags$style(HTML("
      #page_left_btn:hover {
          transform: scale(1.05); /* Grossit le bouton de 10% */
          transition: transform 0.2s ease-in-out; /* Animation fluide */
      }
      
            #page06_btn:hover {
          transform: scale(1.2); /* Grossit le bouton de 10% */
          transition: transform 0.2s ease-in-out; /* Animation fluide */
      }
      
                  #page1_btn:hover {
          transform: scale(1.2); /* Grossit le bouton de 10% */
          transition: transform 0.2s ease-in-out; /* Animation fluide */
      }
      
                  #page2_btn:hover {
          transform: scale(1.2); /* Grossit le bouton de 10% */
          transition: transform 0.2s ease-in-out; /* Animation fluide */
      }
      
                        #page_Agro_btn:hover {
          transform: scale(1.2); /* Grossit le bouton de 10% */
          transition: transform 0.2s ease-in-out; /* Animation fluide */
      }
      
      
            .dev-div:hover {
  transform: scale(1.05); /* Augmente la taille de 20% */
  transition: transform 0.2s ease-in-out; /* Animation fluide */
      }


      
    "))
  ),
  fluidRow(
    style = "display: flex; justify-content: space-between; align-items: stretch; width: 100%; height: 2.2vw; padding: 0;margin-top: 1vw; margin-bottom: -1vw;",
    
    # Bouton tout à gauche
    div(
      style = "flex: 1 1 10%; display: flex; justify-content: flex-start; align-items: center; height: 100%;",
      actionButton("page_left_btn", "Data2Plot",
                   style = "background-color: transparent; border: none; color: #03192b; font-size: 3vw; 
                      font-family: 'Abadi', sans-serif; outline: none; padding: 0; margin: 0;")
    ),
    
    # Boutons centrés
    div(
      style = "flex: 1 1 80%; display: flex; justify-content: center; align-items: center; gap: 8vw; height: 100%;margin-bottom: -1vw;",
      actionButton("page_Agro_btn", "Agronomie",
                   style = "background-color: transparent; border: none; color: grey; font-size: 2vw; outline: none; padding: 0; margin: 0;"),
      actionButton("page1_btn", "Données publiques",
                   style = "background-color: transparent; border: none; color: grey; font-size: 2vw; outline: none; padding: 0; margin: 0;")
    ),
    
    # Colonne 
    div(
      style = "flex: 1 1 10%; display: flex; justify-content: flex-end; align-items: center; height: 100%;",
      div(
        class = "dev-div",  
        uiOutput("mailto_link")
      )
    )
  )
  
  
  
  ,
  


  
  

  
  
  uiOutput("page_content"),
  

  hidden(
    fluidRow(
      id = "footerRow",  # Ajout d'un ID pour le manipuler avec shinyjs
      style = "margin-bottom: 0px; padding-bottom: 0px; height: 3vw; 
         display: flex; align-items: center; flex-wrap: nowrap; 
         background-color: black; color: white;",  # Fond noir et texte blanc
      
      # Bouton Mentions Légales (Gauche)
      column(
        3,  # Cette colonne occupe 3/12 de la largeur totale
        align = "center",
        style = "display: flex; justify-content: center; align-items: center;",
        actionButton("page_ML_btn", "Mentions Légales",
                     style = "background-color: transparent; border: none; 
                        color: white; font-size: 1.5vw; 
                        font-family: 'Abadi', sans-serif; outline: none; 
                        transform-origin: center; cursor: pointer;
                        transition: color 0.3s ease;
                        display: flex; align-items: center; justify-content: center;")  
      ),
      
      # Adresse e-mail (Milieu)
      column(
        6,  # Cette colonne occupe 6/12 de la largeur totale
        align = "center",
        style = "display: flex; justify-content: center; align-items: center; font-size: 1.5vw;",
        HTML("<span style='color: white;'>data2plot@outlook.com</span>")
      ),
      
      # Numéro de téléphone (Droite)
      column(
        3,  # Cette colonne occupe 3/12 de la largeur totale
        align = "center",
        style = "display: flex; justify-content: center; align-items: center; font-size: 1.5vw;",
        HTML("<span style='color: white;'>07.69.06.47.60</span>")
      )
    )
  )
  ,
  
  
  
  # Script pour afficher quand tout est chargé
  tags$script(HTML("
    $(document).ready(function() {
      setTimeout(function() {
        Shiny.setInputValue('page_loaded', true, {priority: 'event'});
      }, 500);  // Petit délai pour être sûr
    });
    
  "))
  
  
  
  
  
  
  
  
)
