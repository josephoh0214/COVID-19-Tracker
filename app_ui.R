library(shiny)
library(plotly)


source("scripts/interactive_page_3.R")


### Page One

# Lets the user input a country and a location for the graph
mobility_sidebar_content <- sidebarPanel(
  selectInput("country",
    label = "Country",
    choices = list(
      "Argentina" = "Argentina",
      "Australia" = "Australia",
      "Brazil" = "Brazil",
      "Canada" = "Canada",
      "Germany" = "Germany",
      "Spain" = "Spain",
      "France" = "France",
      "United Kingdom" = "United Kingdom",
      "Indonesia" = "Indonesia",
      "India" = "India",
      "Italy" = "Italy",
      "Japan" = "Japan",
      "South Korea" = "South Korea",
      "Mexico" = "Mexico",
      "Saudi Arabia" = "Saudi Arabia",
      "Sweden" = "Sweden",
      "Turkey" = "Turkey",
      "United States" = "US",
      "South Africa" = "South Africa"
    ),
    selected = "US"
  ),
  selectInput("location",
    label = "Mobility trend",
    choices = list(
      "Parks" = "parks",
      "Grocery stores / Pharmacies" = "grocery_pharmacy",
      "Staying Home" = "residential",
      "Retail / Recreational Stores",
      "retail_recreation",
      "Transit Stations" = "transit_stations",
      "Workplaces" = "workplaces"
    ),
    selected = "residential"
  )
)

# Main content which is the graph
mobility_main_content <- mainPanel(
  p("The outbreak of COVID-19 has impacted the citizens to
    respond to the virus by changing their habits. This graph 
    shows the change of mobility trend to different locations
    over the world and shows the difference of the rates
    of the citizens responding to the outbreak."),
  plotlyOutput("mobility_change")
)

# layout for mobility panel
mobility_panel <- tabPanel(
  "Mobility Trend",
  titlePanel("Mobility Trend for Various Locations in Different Countries"),
  sidebarLayout(
    mobility_main_content,
    mobility_sidebar_content
  )
)

### Page Two
chart_two_sidepanel <- sidebarPanel(
  h2("Analysis of Most Impacted:"),
  # Select cases or deaths widget.
  selectInput(
    inputId = "cases_deaths",
    label = h3("Select Imact:"),
    choices = list(
      "Deaths" = "total_deaths",
      "Cases" = "total_cases"
    ),
    selected = "total_death"
  ),
  # Select the timeframe widget.
  dateInput(
    inputId = "dateRange",
    label = h3("Select Time Frame From 2020-02-23, to:"),
    value = "2020-04-05",
    min = "2020-02-23",
    max = "2020-04-05",
    format = "yyyy-mm-dd"
  )
)
# Print out the world map
chart_two_mainpanel <- mainPanel(
  p("This graph attempts to understand the timeline
     of the spread of COVID-19 in this critical timeframe.
     We can try to answer where it began,
     and where it spread to chronologically."),
  textOutput(
    outputId = "chart_two_message"
  ),
  leafletOutput(
    outputId = "chart_two_graph"
  )
)

# Combines sidepanel and mainpanel
page_two <- tabPanel(
  "Most Impacted",
  sidebarLayout(
    chart_two_sidepanel,
    chart_two_mainpanel
  )
)

ui <- fluidPage(
  includeCSS("style.css"),
  navbarPage(
    "AF5 - Coronavirus Analysis",
    overview_page,
    mobility_panel,
    page_two,
    page_3,
    take_away_page
  )
)
