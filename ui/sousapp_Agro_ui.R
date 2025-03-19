sousapp_Agro_ui <- function() {
  # Ajouter un élément de menu pour cette sous-application
  liste_menuitems[[length(liste_menuitems) + 1]] <- menuItem(
    "Présentation", tabName = "website", icon = icon("home")
  )
  
  # Ajouter un onglet (tabItem) pour cette sous-application
  liste_tabitems[[length(liste_tabitems) + 1]] <- tabItem(
    tabName = "website",
    
    fluidPage(
      theme = shinytheme("flatly"),
      titlePanel(
        div(
          style = paste0(
            "height: 25vw; ",
            "background: linear-gradient(to right, #03192b 0%, #03192b 10%, transparent 60%); ",
            "color: white; ",
            "margin-top: 0px; ",
            "margin-left: -48px; ",
            "margin-right: -50px; ",
            "margin-bottom: 0px; ",
            "white-space: nowrap; ",
            "font-size: calc(2.5vw); ",
            "display: flex; ",
            "align-items: center; ",
            "position: relative;"  # Important pour positionner les éléments à l'intérieur
          ),
          
          # Ajouter la vidéo en arrière-plan
          tags$video(
            src = "https://videos.pexels.com/video-files/6508491/6508491-uhd_2560_1440_24fps.mp4",  # URL de la vidéo
            type = "video/mp4",  # Type MIME de la vidéo
            autoplay = TRUE,     # La vidéo commence à jouer automatiquement
            muted = TRUE,        # La vidéo est en sourdine
            loop = TRUE,         # La vidéo se répète
            style = "position: absolute; top: 0; left: 0; width: 100%; height: 100%; object-fit: cover; z-index: -1;"
          ),
          

          
          # Texte avec un retour à la ligne
          HTML('<span style="font-size: 4.5vw; line-height: 1.8; margin-left: 30px;font-family: \'Open Sans\', sans-serif;"><strong>Phénotypage</strong><br><strong>Analyse des résultats</strong></span>')

        )
      ),
      
      
   

      
      fluidRow(
        column(12, 
               div(style = "text-align: center; padding: 30px; background-color: #f8f9fa; font-family: 'Open Sans', sans-serif;",
                   tags$head(
                     tags$link(href = "https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&display=swap", rel = "stylesheet")
                   ),
                   h1(
                     HTML('L\'importance des données <span style="color: #ED7D31; font-weight: bold;"><br>pour une agriculture de précision</span>'),
                     style = "font-size: 4vw;"
                   )
               )
        )
      ),
      
      
      
      
      
      div(style = "height: 10vw;"),  # Cela crée un espace vertical équivalent à 5% de la largeur de l'écran.
      
     
      fluidRow(
        style = "display: flex; justify-content: space-between; align-items: center; width: 100%; flex-wrap: nowrap; padding: 0; margin: 0;",
        
        # Colonne Image (cross-fade entre deux images)
        div(
          style = "flex: 1 1 40%; display: flex; justify-content: center; align-items: center; position: relative;",
          div(
            id = "image_container",
            style = "
        position: relative;
        width: 100%;
        height: 30vw;
        overflow: hidden;
        /* Supprimer un éventuel fond blanc qui pourrait apparaitre */
        background-color: transparent;
      ",
            # Image 1
            tags$img(
              id = "img1",
              src = data_list$`1`,
              style = "
          position: absolute;
          top: 0;
          left: 0;
          width: auto;
          height: 100%;
          object-fit: cover;
          opacity: 1;
          transition: opacity 1s ease-in-out;
          backface-visibility: hidden;
          transform: translateZ(0);
        "
            ),
            # Image 2
            tags$img(
              id = "img2",
              src = data_list$`1_an`,
              style = "
          position: absolute;
          top: 0;
          left: 0;
          width: auto;
          height: 100%;
          object-fit: cover;
          opacity: 0;
          transition: opacity 1s ease-in-out;
          backface-visibility: hidden;
          transform: translateZ(0);
        "
            )
          )
        ),
        
        # Colonne Texte
        div(
          style = "flex: 1 1 55%; text-align: left; margin-left: 15px;",
          HTML('
      <span style="font-size: 2vw; line-height: 1.2; text-align: justify; display: block;">
        <strong>Niveau de Maladie ? Étude morphologique ?</strong>
         <div style="height: 2vw;"></div>
        Une analyse d\'images automatisée permet d\'obtenir rapidement des résultats.
        <div style="height: 2vw;"></div>
        Sélectionnez un dossier et l\'analyse s\'applique automatiquement à toutes les images.
      </span>
    ')
        ),
        
        # Script JavaScript pour alterner entre les images avec cross-fade
        tags$script(HTML("
    var toggle = true;
    setInterval(function() {
      var img1 = document.getElementById('img1');
      var img2 = document.getElementById('img2');
      
      if (toggle) {
        img1.style.opacity = 0; // fade-out de l'image 1
        img2.style.opacity = 1; // fade-in de l'image 2
      } else {
        img1.style.opacity = 1; // fade-in de l'image 1
        img2.style.opacity = 0; // fade-out de l'image 2
      }
      toggle = !toggle;
    }, 3000);
  "))
      )
      
      
      
      
      ,
        
        

      
      div(style = "height: 8vw;"),  # Cela crée un espace vertical équivalent à 5% de la largeur de l'écran.
      
        
        
      fluidRow(
        style = "display: flex; justify-content: space-between; align-items: center; width: 100%; flex-wrap: nowrap; padding: 0; margin: 0;",
        
        # Colonne Texte
        div(
          style = "flex: 1 1 55%; text-align: left; margin-left: 15px;",
          HTML('
      <span style="font-size: 2vw; line-height: 1.2; text-align: justify; display: block;">
        <strong>Différentes variétés ? Différents environnements ?</strong>
        <div style="height: 2vw;"></div>
        Certaines méthodes permettent d\'estimer la performance des variétés à l\'échelle globale et locale.
      </span>
    ')
        ),
        
        # Colonne Vidéo
        div(
          style = "flex: 1 1 40%; display: flex; justify-content: center; align-items: center;",
          div(
            style = "
        background-color: white;  /* Fond blanc */
        width: 100%;              /* La vidéo prend toute la largeur du conteneur */
        height: 40vw;             /* Hauteur dynamique basée sur la largeur de l'écran */
        display: flex;            /* Centre la vidéo */
        align-items: center;      /* Centre verticalement */
        justify-content: center;  /* Centre horizontalement */
        overflow: hidden;         /* Coupe tout débordement */
      ",
            tags$video(
              src = data_list$Video_Climats,  # URL de la vidéo
              type = "video/mp4",             # Type MIME de la vidéo
              autoplay = TRUE,                # La vidéo commence à jouer automatiquement
              muted = TRUE,                   # La vidéo est en sourdine
              loop = TRUE,                    # La vidéo se répète
              style = "
          width: auto;            /* Maintenir le ratio d'aspect */
          height: 50%;           /* Occuper toute la hauteur du conteneur */
          object-fit: cover;      /* Ajuster la vidéo sans bandes noires */
        "
            )
          )
        )
      ),
        
        
        

      div(style = "height: 10vw;"),  # Cela crée un espace vertical équivalent à 5% de la largeur de l'écran.
      
        
        
        
        
        
      ),
      
      
      
      
      
      
      
      
      
    )
  
}
