data <- read.csv("data/google_new.csv", stringsAsFactors = FALSE)
library("ggplot2")
library("plotly")
library("scales")

chart2 <- function(data) {
  filtered_data <- data %>%
    filter(country == "US" | country == "Italy" |
             country == "Spain" | country == "France") %>%
    select(country, date, total_cases)
  bar_graph <- ggplot(filtered_data, aes(x = date, y = total_cases)) +
    geom_bar(stat = "identity", color = "orange") +
    theme_grey() +
    theme(axis.title.y = element_blank(),
          axis.text.x = element_blank(),
          axis.ticks.x = element_blank()) +
    facet_wrap(~country) +
    labs(title = "Rises in Total Confirmed Cases by days",
         x = "Feb 23rd, 2020 ~ Apr 5th, 2020") +
    scale_y_continuous(labels = number)
  chart <- ggplotly(bar_graph)
return(chart)
}