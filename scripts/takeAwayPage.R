
source("scripts/mobility_chart.R")
data <- read.csv("data/google_new.csv", stringsAsFactors = FALSE)


takeAwayPage <- tabPanel(
  "Takeaways",
take_away_page <- tabPanel(
  "Takeaways",
  fluidPage(
    h1("Takeaways:"),
    h2("1st Takeaway"),
    p(
      "All the countries have responded at different rates to the virus,",
      "and the change of the mobility trend resulted accordingly.",
      "A trend that we saw is that countries that were hit the hardest,",
      "like the U.S., Italy, and Spain, responded the latest in terms of ",
      "changing their habits (i.e. staying home) versus countries that were",
      "doing better off (i.e. South Korea) responded quicker in comparison.",
      "The graph starts at Feburary 23rd of 2020 with the U.S. stay at home",
      "rate of -0.823% while South Korea's stay at home rate was 8.347%.",
      "This shows that citizens of South Korea were quicker to respond to",
      "the virus which resulted in slowing down the spread.",
      "This may be due to the geographic locations of countries in proximity",
      "with China, where the virus originated. For instance, South Korea is",
      "much closer to China which resulted them to react quicker in response to",
      "the virus compared to western countries such as the U.S., because they",
      "were affected by the virus earlier than the U.S.",
      "much closer to China which resulted them to react quicker in response",
      "to the virus compared to western countries such as the U.S., because",
      "they were affected by the virus earlier than the U.S."
      ),

    h2("2nd Takeaway"),
    p(
      "From the most impacted page's map, we can see which countries were",
      "most impacted at which point in this critical time period. Using",
      "this graph, we can see that Italy was the most impacted in terms",
      "of casualties with 15887 total casualties in this timeframe.",
      "However, the US was the most impacted in terms of cases with 336912",
      "cases. Going through the timeframe, we can see that the outbreak in",
      "western countries notably begins to spark in Italy, and later",
      "affecting neighboring countries. The US however beats Italy in",
      "confirmed cases in the middle of this timeframe. Between March",
      "25th and March 26th, Italy gains 6203 new confirmed cases, while the",
      "US gains 18058 new cases, almost three times as much. The US,",
      "continues to increase in cases in a much more rapid pace than Italy",
      "or any other country in the world for the remaining time frame. Some",
      "broader implications that we can draw from this data is that countries",
      "were hit at different times, and in some cases like the US, spiraled",
      "much more out of control than other places because of how the country",
      "dealt with the situation. Comparing the US and South Korea again,",
      "South Korea's cases multiplied by around 1.2x from March 20th to April",
      "5th, while the US' cases multiplied around 17.7x. Implications that can",
      "be drawn here is that countries handled the virus differently and",
      "suffered more or less cases depending on their response, in this",
      "timeframe."
    ),
  
    h2("3rd Takeaway"),
    p(
      "Countries have responded differently to the coronavirus from",
      "2/23 - 4/05, and the average human movement to public places",
      "have also changed accordingly. From the scatterplot, we can",
      "see a notable trend of the average transit visit being consistently",
      "below 15% for every country present in the data frame. This trend",
      "makes sense because the public transit system is a confined space",
      "where germs and bacterias can spread much quicker due to distance",
      "between people and people making contact with surfaces on the transit",
      "such as handlebars, seats, and railings. We can see that Italy has the",
      "most dramatic decrease in transit visit on average during this",
      "timeframe of ~56.71%, whereas the U.S. there is only an average",
      "of ~21.13% decrease in transit visit. This can be understood if we",
      "look at the average decrease in work visit of both countries with Italy",
      "having a ~43% decrease and U.S. having a ~18.63% decrease. The broader",
      "implication that we can draw from the data is that with an average",
      "decrease in work visit translates to the fact that there is less need",
      "to use the transit since many working people rely on public transit to",
      "get to work."
    )
  )
)
)
