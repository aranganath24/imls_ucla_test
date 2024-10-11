library(shiny)
require(shinydashboard)
library(ggplot2)
library(dplyr)

# read in data
recommendation <- read.csv('https://raw.githubusercontent.com/amrrs/sample_revenue_dashboard_shiny/master/recommendation.csv',stringsAsFactors = F,header=T)

# simplest possible dashboard
ui <- dashboardPage(
  dashboardHeader(),
  dashboardSidebar(),
  dashboardBody()
)
server <- function(input, output) { }
shinyApp(ui, server)


#Dashboard header carrying the title of the dashboard
header <- dashboardHeader(title = "Basic Dashboard")  

# updates UI
ui<-dashboardPage(
  header,
  dashboardSidebar(),
  dashboardBody()
)

# views new dashboard
shinyApp(ui, server)


# Adds and customizes sidebar
sidebar <- dashboardSidebar(
  sidebarMenu(
    menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
    menuItem("Visit-us", icon = icon("send",lib='glyphicon'), 
             href = "https://www.salesforce.com")
  )
)

# updates UI
ui<-dashboardPage(
  header,
  sidebar,
  dashboardBody()
)

# views new dashboard
shinyApp(ui, server)











