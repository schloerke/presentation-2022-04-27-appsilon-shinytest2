library(shiny)
library(ggplot2)
library(dplyr)

ui <- fluidPage(
  sidebarLayout(
    sidebarPanel(
      checkboxGroupInput(inputId = "penguin_species", label = "Filter by species: ", choices = c("Adelie", "Chinstrap", "Gentoo"), selected = c("Adelie", "Chinstrap", "Gentoo")),
      downloadButton(outputId = "download_csv", label = "Download CSV")
    ),

    mainPanel(
      tags$h1(
        tags$img(src = "https://allisonhorst.github.io/palmerpenguins/logo.png", height = "40px"),
        htmlOutput(outputId = "penguin_count", inline = TRUE),
        " Palmer Penguins"
      ),
      plotOutput(outputId = "penguin_scatterplot", height = "200px"),
      DT::DTOutput(outputId = "penguin_datatable"),
    )
  )
)

server <- function(input, output, session) {

  filtered_penguins <- reactive({
    validate(need(input$penguin_species, "You must have at least one species selected"))
    palmerpenguins::penguins %>%
      filter(species %in% input$penguin_species) %>%
      select(species, island, bill_length_mm, bill_depth_mm)
  })
  # Number
  penguin_count <- reactive({ nrow(filtered_penguins()) })
  output$penguin_count <- renderUI(penguin_count())

  shiny::exportTestValues(
    penguin_count = penguin_count(),
    filtered_penguins = filtered_penguins()
  )

  # Plot
  output$penguin_scatterplot <- renderPlot({
    ggplot(
      filtered_penguins(),
      aes(x = bill_length_mm, y = bill_depth_mm, color = species)
    ) +
      geom_point() +
      facet_wrap(vars(island), nrow = 1, labeller = ggplot2::label_both)
  })

  # Table
  output$penguin_datatable <- DT::renderDT({
    DT::datatable(filtered_penguins())
  })

  # Download CSV of filtered data
  output$download_csv <- downloadHandler(
    filename = function() { "penguins.csv" },
    content = function(file) {
      readr::write_csv(filtered_penguins(), file)
    }
  )

}

shinyApp(ui, server)
