data <- read.csv("data/google_new.csv", stringsAsFactors = FALSE)
library(dplyr)

most_death_country <- data %>%
  group_by(country) %>%
  summarise(total_death = max(fatalities),
            grocery_avg = mean(grocery_pharmacy),
            park_avg = mean(parks),
            residential_avg = mean(residential),
            retail_recreation_avg = mean(retail_recreation),
            transit_avg = mean(transit_stations),
            workplaces_avg = mean(workplaces)
            ) %>%
  filter(total_death == max(total_death))

most_cases_country <- data %>%
  group_by(country) %>%
  summarise(total_case = sum(total_cases),
            grocery_avg = mean(grocery_pharmacy),
            park_avg = mean(parks),
            residential_avg = mean(residential),
            retail_recreation_avg = mean(retail_recreation),
            transit_avg = mean(transit_stations),
            workplaces_avg = mean(workplaces)
            ) %>%
  filter(total_case == max(total_case))

least_cases_country <- data %>%
  group_by(country) %>%
  summarise(total_case = sum(total_cases),
            grocery_avg = mean(grocery_pharmacy),
            park_avg = mean(parks),
            residential_avg = mean(residential),
            retail_recreation_avg = mean(retail_recreation),
            transit_avg = mean(transit_stations),
            workplaces_avg = mean(workplaces)
            ) %>%
  filter(total_case == min(total_case))

least_death_country <- data %>%
  group_by(country) %>%
  summarise(total_death = max(fatalities),
            grocery_avg = mean(grocery_pharmacy),
            park_avg = mean(parks),
            residential_avg = mean(residential),
            retail_recreation_avg = mean(retail_recreation),
            transit_avg = mean(transit_stations),
            workplaces_avg = mean(workplaces)
            ) %>%
  filter(total_death == min(total_death))
