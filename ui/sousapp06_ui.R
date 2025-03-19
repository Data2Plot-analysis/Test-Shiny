sousapp06_ui <- function() {
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
            src = "https://videos.pexels.com/video-files/3252856/3252856-uhd_2560_1440_25fps.mp4",  # URL de la vidéo
            type = "video/mp4",  # Type MIME de la vidéo
            autoplay = TRUE,     # La vidéo commence à jouer automatiquement
            muted = TRUE,        # La vidéo est en sourdine
            loop = TRUE,         # La vidéo se répète
            style = "position: absolute; top: 0; left: 0; width: 100%; height: 100%; object-fit: cover; z-index: -1;"
          ),
          
          # Logo de l'entreprise
          tags$img(
            src = data_list$Logo_Entreprise, 
            style = "height: 75%; margin-left: 25px; margin-bottom: 4px; margin-top: 4px;", 
            alt = "Logo de l'entreprise"
          ),
          
          # Texte avec un retour à la ligne
          HTML('<span style="font-size: 4.5vw; line-height: 1.8; margin-left: 15px; font-family: \'Open Sans\', sans-serif;">
  <strong>Vos données</strong><br><strong>Nos solutions</strong>
</span>')
        )
      ),
      
      div(style = "height: 5vw;"),  # Cela crée un espace vertical équivalent à 5% de la largeur de l'écran.
      
      
     
      fluidRow(
        column(12, 
               div(style = "text-align: center; padding: 30px; background-color: #f8f9fa; font-family: 'Open Sans', sans-serif;",
                   tags$head(
                     tags$link(href = "https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&display=swap", rel = "stylesheet")
                   ),
                   h1(
                     HTML('Valorisez vos données grâce à des <span style="color: #ED7D31; font-weight: bold;"><br>visualisations intuitives</span>'),
                     style = "font-size: 4vw;"
                     )
               )
        )
      ),
      
      
      
      div(style = "height: 10vw;"),  # Cela crée un espace vertical équivalent à 5% de la largeur de l'écran.
      
      
      
      fluidRow(
        style = "display: flex; justify-content: space-between; align-items: center; width: 100%; flex-wrap: nowrap; padding: 0; margin: 0;",
        
        # Première colonne
        div(style = "flex: 1 1 30%; text-align: center;", 
            icon("chart-line", style = "font-size: 8vw;"),
            h3(style = "font-size: 3vw; margin-top: 1vw;margin-bottom: 1vw;", "Analyse"),
            p("Analyse de données", style = "font-size: 1.9vw; margin-bottom: 0;margin-top: 0;"),
            p("Questions - Données - Réponses", style = "font-size: 1.2vw; margin-top: 0;")
        ),
        
        # Deuxième colonne
        div(style = "flex: 1 1 30%; text-align: center; ", 
            icon("display", style = "font-size: 8vw;"),
            h3(style = "font-size: 3vw; margin-top: 1vw;margin-bottom: 1vw;", "Dashboards"),
            p("Création de Dashboards", style = "font-size: 1.9vw; margin-bottom: 0;margin-top: 0;"),
            p("Des figures intuitives pour de meilleurs choix", style = "font-size: 1.2vw; margin-top: 0;")
        ),
        
        # Troisième colonne
        div(style = "flex: 1 1 30%; text-align: center;", 
            icon("forward-fast", style = "font-size: 8vw;"),
            h3(style = "font-size: 3vw; margin-top: 1vw;margin-bottom: 1vw;", "Efficacité"),
            p("Gain de temps et d'efficacité", style = "font-size: 1.9vw;  margin-bottom: 0;margin-top: 0;"),
            p("Des analyses automatisées, rapides et adaptées", style = "font-size: 1.2vw;  margin-top: 0;")
        )
      ),
      
      
      
      div(style = "height: 13vw;"),  # Cela crée un espace vertical équivalent à 5% de la largeur de l'écran.
      

      
      
      fluidRow(
        style = "display: flex; justify-content: space-between; align-items: center; width: 100%; flex-wrap: nowrap; padding: 0; margin: 0;",
        
        # Première colonne (Texte)
        div(style = "flex: 1 1 60%; text-align: left; margin-left: 15px;", 
            HTML('
        <span style="font-size: 3.5vw; line-height: 1.5;">Qui suis-je ?</span>
        <div style="height: 2.5vw;"></div>
        <span style="font-size: 1.7vw; line-height: 1.1;text-align: justify; display: block;">Je suis <span style="font-weight: bold;">Kévin Cartelier</span>, fondateur de <span style="font-weight: bold;">Data2Plot</span> et passionné par l\'analyse de données. Après un doctorat en génétique végétale quantitative, j\'ai travaillé pendant plus de deux ans et demi dans le secteur semencier en tant que Breeding Data Analyst.</span>
        <div style="height: 2vw;"></div>
        <span style="font-size: 1.7vw; line-height: 1.1;text-align: justify; display: block;">J\'ai rapidement compris que la meilleure manière d\'apporter des réponses aux questions liées aux données était de créer des <span style="font-weight: bold;">logiciels d\'analyse</span> sur mesure.</span>
        <div style="height: 2vw;"></div>
        <span style="font-size: 1.7vw; line-height: 1.1;text-align: justify; display: block;">Mon objectif est simple : offrir des <span style="font-weight: bold;">solutions de visualisation de données</span> intuitives et adaptées pour aider mes clients à prendre rapidement les meilleures décisions.</span>
      ')
        ),
        
        # Deuxième colonne (Image)
        div(style = "flex: 1 1 30%; text-align: center;", 
            tags$img(
              src = data_list$Photo_Moi, 
              style = "height: 32vw; margin-left: 25px; margin-bottom: 4px; margin-top: 0px;", 
              alt = "Photo_Moi"
            )
        )
      )
      ,
        
      div(style = "height: 13vw;"),  # Cela crée un espace vertical équivalent à 5% de la largeur de l'écran.
      
        
        
        
      fluidRow(
        style = "display: flex; justify-content: space-between; align-items: center; width: 100%; padding: 0; margin: 0;",
        
        # Première colonne (image)
        div(style = "flex: 1 1 35%; text-align: center;", 
            tags$img(
              src = data_list$Méthode, 
              style = "width: 30vw; margin-top: 4vw;", 
              alt = "Méthode"
            )
        ),
        
        # Deuxième colonne (texte)
        div(style = "flex: 1 1 65%; text-align: left; margin-left: 15px;", 
            HTML('
        <span style="font-size: 3.5vw; line-height: 1.5;">Ma méthode</span>
        <div style="height: 3vw;"></div>
        <span style="font-size: 1.7vw; line-height: 1.1;text-align: justify; display: block;">
          <span style="font-weight: bold;">Comprendre vos besoins : </span> Echangeons ensemble pour définir les questions auxquelles vous souhaitez répondre.
        </span>
        <div style="height: 5vw;"></div>
        <span style="font-size: 1.7vw; line-height: 1.1;text-align: justify; display: block;">
          <span style="font-weight: bold;">Imaginer la visualisation idéale : </span>Déterminons la présentation graphique pour que vos données soient facilement compréhensibles.
        </span>
        <div style="height: 5vw;"></div>
        <span style="font-size: 1.7vw; line-height: 1.1;text-align: justify; display: block;">
          <span style="font-weight: bold;">Concevoir le logiciel : </span>Vous pourrez au final vous concentrer sur ce qui compte, <span style="font-weight: bold;">la prise de décisions.</span>
        </span>
      ')
        )
      )
      ,

        
      div(style = "height: 15vw;"),  # Cela crée un espace vertical équivalent à 5% de la largeur de l'écran.
      

        
        tags$head(
          tags$style(HTML("
    .zoom-image:hover {
      transform: scale(1.1);  /* Agrandissement de l'image au survol */
    }
  "))
        ),
        
       
        
        br(),
        br(),
        br(), 
        
        
        
        
        
        
      ),
      
      
      
      
      
      
      
      
      
    )
  
}
