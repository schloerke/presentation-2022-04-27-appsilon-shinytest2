library(shinytest2)

test_that("{shinytest2} recording: penguins", {
  app <- AppDriver$new(name = "penguins", height = 943, width = 871)
  app$expect_download("download_csv")
  app$expect_values()
  app$expect_values(output = "penguin_count")
})

test_that("App initial values", {
  app <- AppDriver$new(name = "initial")
  app$expect_values(output = "penguin_count")
})
test_that("Ideal testing", {
  app <- AppDriver$new(name = "ideal")

  expect_equal(
    app$get_value(export = "penguin_count"),
    344
  )

  ## View your live Shiny application!
  # app$view()

  # Adjust selected penguin species
  app$set_inputs(penguin_species = "Adelie")
  # Make sure `penguin_count` is updated
  expect_equal(
    app$get_value(export = "penguin_count"),
    154
  )

})
