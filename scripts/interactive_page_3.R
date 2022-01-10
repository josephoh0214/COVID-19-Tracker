library("dplyr")
library("ggplot2")
library("plotly")
library("tidyr")
library("stringr")
library("shiny")

data <- read.csv("data/google_new.csv", stringsAsFactors = FALSE)

# Function that returns the interactive scatter plot 
chart_3 <- function(data, country_input) {
  activity <- data %>%
    group_by(country) %>%
    filter(country == country_input) %>%
    summarise(
      grocery_visit = mean(grocery_pharmacy),
      parks_visit = mean(parks),
      retail_visit = mean(retail_recreation),
      transit_visit = mean(transit_stations),
      work_visit = mean(workplaces)
    )
  new_activity_done <- gather(
    activity,
    key = visits,
    value = percentages,
    -country
  )
  comparisons_plot <- ggplot(
    data = new_activity_done,
    aes(
      x = visits,
      y = percentages,
      color = country
    )
  ) +
    geom_point() +
    ggtitle("Avg Movement Percentage to Cases")

  comparison_plot_done <- ggplotly(comparisons_plot)

  return(comparison_plot_done)
}


# Creating personal UI sidebar panel for scatterplot
country_search_sidebar <- sidebarPanel(
  selectInput("country_select",
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
  )
)

# Creating personal UI main panel for scatter plot
scatterplot_main <- mainPanel(
  p("This is a scatterplot that shows the average human movement
    to various public places by country from the timeframe
    2/23/2020 - 4/05/2020. If the average is negative,
    then there is an overall decrease in visit of a particular
    location of the country selected, and vice versa."),
  plotlyOutput("scatter")
)

# Creating tab 3 by combining main and sidebar panels
page_3 <- tabPanel(
  "Scatter Plot",
  titlePanel("Average movement percentage to Cases"),
  sidebarLayout(country_search_sidebar, scatterplot_main)
)
