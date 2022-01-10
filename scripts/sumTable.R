data <- read.csv("data/google_new.csv", stringsAsFactors = FALSE)
library(knitr)


summary <- function(data) {
  table <- kable(data %>%
    group_by(Country = country) %>%
    summarise(Casualties = sum(fatalities), Cases = sum(total_cases)) %>%
    arrange(-Casualties))
  return(table)
}
