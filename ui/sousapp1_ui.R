sousapp1_ui <- function() {
  # Ajouter un élément de menu pour cette sous-application
  liste_menuitems[[length(liste_menuitems) + 1]] <- menuItem(
    "Présentation", tabName = "website", icon = icon("home")
  )
  
  # Ajouter un onglet (tabItem) pour cette sous-application
  liste_tabitems[[length(liste_tabitems) + 1]] <- tabItem(
    tabName = "website",
    
    fluidPage(
      
      tags$style(HTML("
    .img-hover-effect:hover {
      transform: scale(1.1);  /* Zoom de 10% */
    }
  ")),
      
      
      
      theme = shinytheme("flatly"),

      
      div(style = "height: 10vw;"),  # Cela crée un espace vertical équivalent à 5% de la largeur de l'écran.
      
      
      

      fluidRow(
        style = "display: flex; justify-content: space-between; align-items: center; width: 100%; flex-wrap: nowrap; padding: 0; margin: 0;",

        
        #  colonne 
  
        div(style = "flex: 1 1 60%; text-align: left; margin-left: 15px;", 
            HTML('
        <span style="font-size: 3.5vw; line-height: 1.5;">Quelle utilité ?</span>
        <div style="height: 2.5vw;"></div>
        <span style="font-size: 1.7vw; line-height: 1.1;text-align: justify; display: block;">Les données publiques offrent un potentiel immense pour l’analyse et l’exploitation d’informations, donnant à chacun la possibilité d’avoir une meilleure compréhension des enjeux sociétaux, économiques et environnementaux.</span>
       
      ')
        )
        
        
        
      )
      ,
      
      
      
      
      div(style = "height: 10vw;"),  # Cela crée un espace vertical équivalent à 5% de la largeur de l'écran.
      

      
      
      fluidRow(
        style = "display: flex; justify-content: space-between; align-items: center; width: 100%; flex-wrap: nowrap; padding: 0; margin: 0;",
        
        # Première colonne (Texte)
        
        div(style = "flex: 1 1 25%; text-align: center;", 
            tags$a(
              href = "https://www.data.gouv.fr/fr/reuses/radars-en-france/", 
              target = "_blank", 
              tags$img(
                src = data_list$im_site_radars, 
                style = "height: 15vw; margin-left: 25px; margin-bottom: 4px; margin-top: 3vw; transition: transform 0.3s ease;", 
                alt = "radars en France data2plot",
                class = "img-hover-effect"
              )
            )
        )
        ,
        
        
        

        
        # Deuxième colonne 

        div(style = "flex: 1 1 75%; text-align: left; margin-left: 15px;", 
            HTML('
      <span style="font-size: 3.3vw; line-height: 1.5;">Les radars en France</span>
      <div style="height: 2.2vw;"></div>
      <span style="font-size: 1.7vw; line-height: 1.1;text-align: justify; display: block;">Le <span style="font-weight: bold;">Ministère de l’intérieur</span>, a sorti le 18 octobre 2024 sur data.gouv.fr la liste de tous les radars de France sous format csv.</span>
      <div style="height: 2vw;"></div>
      <span style="font-size: 1.7vw; line-height: 1.1;text-align: justify; display: block;">Le tableau de bord créé permet d’avoir une vue d’ensemble de l’implantation des radars par type au cours du temps.</span>
      <div style="height: 2vw;"></div>
      <span style="font-size: 1.7vw; line-height: 1.1;text-align: justify; display: block;">Il permet aussi d’identifier les régions et départements comportant le plus de radars grâce à un sunburst chart dynamique.</span>
      <div style="height: 2vw;"></div>
      <span style="font-size: 1.7vw; line-height: 1.1;text-align: justify; display: block;">Réutilisé par :   </span>
    '),
            
            div(style = "height: 1vw;"),  
            
            
            # Ajout des boutons avec les images
            column(
              6,  # Cette colonne occupe 6/12 de la largeur totale
              align = "center",
              style = "display: flex; justify-content: center; align-items: center;",  # Centrer les images
              
              # Premier lien avec image
              tags$a(
                href = "https://www.largus.fr/actualite-automobile/radars-enfin-une-carte-de-france-actualisee-des-emplacements-30037783.html",  # URL de destination
                target = "_blank",  # Ouvre le lien dans un nouvel onglet
                tags$img(
                  src = data_list$Argus,  # Chemin de l'image dans data_list
                  class = "zoom-image",  # Ajout d'une classe pour cibler cette image
                  style = "
            height: 2vw;
            cursor: pointer;
            display: block;
            margin-right: 5px;
            transition: transform 0.3s ease;  /* Transition pour l'agrandissement */
          "
                )
              ),
              
              # Deuxième lien avec image
              tags$a(
                href = "https://www.linternaute.com/auto/conduite/6874688-carte-radars/",  # URL de destination
                target = "_blank",  # Ouvre le lien dans un nouvel onglet
                tags$img(
                  src = data_list$Linternaute,  # Chemin de l'image dans data_list
                  class = "zoom-image",  # Ajout d'une classe pour cibler cette image
                  style = "
            height: 2vw;
            cursor: pointer;
            display: block;
            transition: transform 0.3s ease;  /* Transition pour l'agrandissement */
          "
                )
              )
            )
        )
        
        
        
        
        
      )
      ,
      
      div(style = "height: 13vw;"),  # Cela crée un espace vertical équivalent à 5% de la largeur de l'écran.
      
      
      
      fluidRow(
        style = "display: flex; justify-content: space-between; align-items: center; width: 100%; flex-wrap: nowrap; padding: 0; margin: 0;",
        
        # Première colonne (Texte)
        
        div(style = "flex: 1 1 25%; text-align: center;", 
            tags$a(
              href = "https://www.data.gouv.fr/fr/reuses/nomdeville/", 
              target = "_blank", 
              tags$img(
                src = data_list$im_site_villes, 
                style = "height: 13vw; margin-left: 25px; margin-bottom: 4px; margin-top: 3vw; transition: transform 0.3s ease;", 
                alt = "nom de villes data2plot",
                class = "img-hover-effect"
              )
            )
        )
        ,
        
        
        
        
        
        # Deuxième colonne (Image)
        
        div(style = "flex: 1 1 75%; text-align: left; margin-left: 15px;", 
            HTML('
      <span style="font-size: 3.3vw; line-height: 1.5;">Les noms de villes</span>
      <div style="height: 2.2vw;"></div>
      <span style="font-size: 1.7vw; line-height: 1.1;text-align: justify; display: block;">Un nouvel outil interactif qui permet d’explorer la toponymie des villes françaises selon des lettres ou mots spécifiques.</span>
      <div style="height: 2vw;"></div>
      <span style="font-size: 1.7vw; line-height: 1.1;text-align: justify; display: block;">Ce tableau de bord met en lumière des phénomènes géographiques, comme les tracés des fleuves, à travers les noms des villes qui les bordent.</span>
      <div style="height: 2vw;"></div>
      <span style="font-size: 1.7vw; line-height: 1.1;text-align: justify; display: block;">Vous découvrirez que les villes contenant un "k" sont majoritairement dans le Grand Est, les Hauts-de-France et la Bretagne, tandis que celles commençant par "Tré" se concentrent en Bretagne.</span>
      <div style="height: 2vw;"></div>
      <span style="font-size: 1.7vw; line-height: 1.1;text-align: justify; display: block;">Une approche ludique et éducative qui transforme notre regard sur le territoire grâce aux données.</span>
    ')
            
    
            

        )
        
        
        
        
        
      )
      ,
   
      
      
      
      
      
      div(style = "height: 15vw;"),  # Cela crée un espace vertical équivalent à 5% de la largeur de l'écran.
      
      
      
      
      
      
      div(style = "height: 30vw;"),  # Cela crée un espace vertical équivalent à 5% de la largeur de l'écran.
      
      
      
      
      
      
    
      
      
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
