# ui/sousapp2_ui.R

sousapp2_ui <- function() {

# Ajouter un élément de menu pour cette sous-application
liste_menuitems[[length(liste_menuitems) + 1]] <- menuItem(
  "Calculatrice", tabName = "sousapp2", icon = icon("calculator")
)

# Ajouter un onglet (tabItem) pour cette sous-application
liste_tabitems[[length(liste_tabitems) + 1]] <- tabItem(
  tabName = "sousapp2",
  h2("Calculatrice - Sous-app 2"),
  numericInput("num1", "Nombre 1 :", value = 0),
  numericInput("num2", "Nombre 2 :", value = 0),
  actionButton("calculate", "Calculer"),
  h3("Résultat :"),
  textOutput("result_sousapp2")
)
}
