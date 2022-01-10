library("shiny")

source("scripts/overViewPage.R")
source("scripts/takeAwayPage.R")
source("app_server.R")
source("app_ui.R")

shinyApp(ui = ui, server = server)
