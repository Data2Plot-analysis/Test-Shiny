# server.R

server <- function(input, output, session) {
  
  # Variable réactive pour stocker la page active
  active_page <- reactiveVal("sousapp06")
  
  # Observer les boutons et mettre à jour la page active
  observeEvent(input$page_left_btn, { active_page("sousapp06") })
  observeEvent(input$page06_btn, { active_page("sousapp06") })
  observeEvent(input$page1_btn, { active_page("sousapp1") })
  observeEvent(input$page2_btn, { active_page("sousapp2") })
  observeEvent(input$page_Agro_btn, { active_page("sousapp_Agro") })
  
  observeEvent(input$page_loaded, {
    show("footerRow")  # Affiche le footer après chargement
  })
  observeEvent(input$page_ML_btn, { active_page("sousapp_ML") })
  
  # Charger les sous-applications (UI et Server)
  
  source("ui/sousapp06_ui.R", local = TRUE)
  source("server/sousapp06_server.R", local = TRUE)
  
  source("ui/sousapp1_ui.R", local = TRUE)
  source("server/sousapp1_server.R", local = TRUE)
  
  source("ui/sousapp2_ui.R", local = TRUE)
  source("server/sousapp2_server.R", local = TRUE)
  
  source("ui/sousapp_Agro_ui.R", local = TRUE)
  source("server/sousapp_Agro_server.R", local = TRUE)
  
  source("ui/sousapp_ML_ui.R", local = TRUE)
  source("server/sousapp_ML_server.R", local = TRUE)

  
  
  # Appeler les modules serveur une seule fois ici
  callModule(sousapp06_server, "sousapp06_server")
  callModule(sousapp1_server, "sousapp1_server")
  callModule(sousapp2_server, "sousapp2_server")
  callModule(sousapp_Agro_server, "sousapp_Agro_server")
  callModule(sousapp_ML_server, "sousapp_ML_server")
  
  
  # Afficher le contenu de la page active
  # Charger les fichiers UI une seule fois au début
  source("ui/sousapp06_ui.R", local = TRUE)
  source("ui/sousapp1_ui.R", local = TRUE)
  source("ui/sousapp2_ui.R", local = TRUE)
  source("ui/sousapp_Agro_ui.R", local = TRUE)
  source("ui/sousapp_ML_ui.R", local = TRUE)
  
  
  output$page_content <- renderUI({
    if (active_page() == "sousapp06") {
      sousapp06_ui()  # Appel de la fonction UI pour la sous-app1
    } else if (active_page() == "sousapp2") {
      sousapp2_ui()  # Appel de la fonction UI pour la sous-app2
    }else if (active_page() == "sousapp1") {
      sousapp1_ui()  # Appel de la fonction UI pour la sous-app2
    }else if (active_page() == "sousapp_Agro") {
      sousapp_Agro_ui()  # Appel de la fonction UI pour la sous-app_Agro
    }else if (active_page() == "sousapp_ML") {
      sousapp_ML_ui()  # Appel de la fonction UI pour la sous-app_Agro
    }
    
    
    
    
  })
  
  
  
  # Intégrer les serveurs des sous-applications
  # Charger les serveurs des sous-applications une seule fois
  source("server/sousapp06_server.R", local = TRUE)
  source("server/sousapp1_server.R", local = TRUE)
  source("server/sousapp2_server.R", local = TRUE)
  source("server/sousapp_Agro_server.R", local = TRUE)
  source("server/sousapp_ML_server.R", local = TRUE)
  
  
  # Intégrer la logique serveur pour chaque sous-application
  observe({
    # Vérifier la page active et appeler le serveur correspondant
    page_active <- active_page()  # Récupérer la page active une fois
    
    # Utiliser un switch pour simplifier la gestion des différentes sous-applications
    switch(page_active,
           sousapp06 = sousapp06_server(input, output, session),
           sousapp1 = sousapp1_server(input, output, session),
           sousapp2 = sousapp2_server(input, output, session),
           sousapp_Agro = sousapp_Agro_server(input, output, session),
           sousapp_ML = sousapp_ML_server(input, output, session)

    )
  })
  
  
  
  output$mailto_link <- renderUI({
    # Bouton qui ouvre le mailto
    tags$a("Contact", href = "mailto:Data2Plot@outlook.com", style = "background-color: #0078d3; color: white; border: none; font-size: 1.5vw; padding: 5px 10px; border-radius: 5px; text-decoration: none;", target = "_blank")
  })
  
  
  
  
  
  
  
  
  
}
