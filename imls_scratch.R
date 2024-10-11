library(gapminder)
library(tidyverse)
library(shinydashboard)

# Set Up UI Components
header <- dashboardHeader(title = "Welcome to the article about shinydashboard", # Customizable header with title 
                          titleWidth = 600)  # Adjusted with to make the title fit
sidebar <- dashboardSidebar()  # Sidebar for navigation
body <- dashboardBody()  # Main body for content

# Assemble UI
ui <- dashboardPage(header, sidebar, body)  # Combine header, sidebar, and body

# Server Function
server <- function(input, output) {}  # Server logic

# Launch Dashboard
shiny::shinyApp(ui, server)  # Initialize the shinydashboard
