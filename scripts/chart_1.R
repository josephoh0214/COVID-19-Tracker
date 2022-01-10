data <- read.csv("data/google_new.csv", stringsAsFactors = FALSE)
library("dplyr")
library("ggplot2")
library("plotly")
library("tidyr")

chart_3 <- function(data) {
  activity <- data %>%
    group_by(country) %>%
    summarise(
      grocery_visit = mean(grocery_pharmacy),
      parks_visit = mean(parks),
      retail_visit = mean(retail_recreation),
      transit_visit = mean(transit_stations),
      work_visit = mean(workplaces),
      cases = sum(total_cases)
    )
  new_activity_done <- gather(
    activity,
    key = visits,
    value = percentages,
    -country,
    -cases
  )
  comparisons_plot <- ggplot(
    data = new_activity_done,
    aes(
      x = cases,
      y = percentages,
      color = country,
      fill = visits
    )
  ) +
    geom_point() +
    ggtitle("Tracking Average Human Movement Percentage to Cases")

  comparison_plot_done <- ggplotly(comparisons_plot)

  return(comparison_plot_done)
}