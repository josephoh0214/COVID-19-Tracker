# the over view page
overview_page <- tabPanel(
  "Overview",
  sidebarPanel(
    div( id = "corona",
      h2("Covid-19"),
      img(
        alt = "Covid-19", src =
          "https://images.newscientist.com/wp-content/uploads/2020/02/11165812/c0481846-wuhan_novel_coronavirus_illustration-spl.jpg"
      )
    ),
  ),
  mainPanel(
    h1("Overview"),
    p(
      "Our domain of interest is the recent outbreak of coronavirus.",
      "With this interest in mind, we want to analyzed how COVID-19 has
      impacted",
      " different countries around the world.",
      "We look for data that will specifically analyzes the frequency",
      "of people's inhabitation of common areas including workplaces, parks,",
      "or transit stations over the time of February 23rd, to April 5th,",
      "when the most critical amount of the COVID-19 outbreak occured."
    ),
    h2("Major Question"),
    p("How many cases and deaths have the Corona virus caused?"),
    p("Which country are the most infected?"),
    p("Which country have the most deaths due to the virus?"),
    p("How did the mobility rate to different location change
      after the outbreak?"),
    p("How much did people travel during this time?"),
    p("On average, how has human movement percentages to various
      public places changed between different countries from 2/23/2020
      - 04/05/2020?"),
    h2("Data Set"),
    p(
      "To answer these question, we are using a multitude of dataset one
      of which have",
      "information about each countries, their deaths due to the coronavirus
      and the",
      "number of cases that happen",
      "we also will be using a dataset with information about peoples changes
      in tavel",
      "in different countries."
    )
  )
)
