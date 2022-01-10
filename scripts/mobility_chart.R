library(ggplot2)
library(plotly)
library(scales)
library(dplyr)

mobility_chart <- function(data, input_country, input_location) {
  filtered_data <- data %>%
    filter(country == input_country) %>%
    select(date, country, input_location)
  graph <- ggplot(filtered_data, aes(x = date, y = (!! sym(input_location)),
                                     group = country)) +
    geom_line(aes(color = country)) +
    labs(title = "Mobility Trend Graph",
         x= "Dates",
         y = "Percent Change") +
    theme(axis.text.x = element_text(angle = 90, vjust = 0.5),
          panel.grid.minor = element_blank()) +
    scale_y_continuous(labels = scales::percent_format(scale = 1))
  chart <- ggplotly(graph)
  return(chart)
}
