library(shinytest2)

test_that("{shinytest2} recording: penguins", {
  app <- AppDriver$new(name = "penguins", height = 943, width = 871)
  app$expect_download("download_csv")
  app$expect_values()
  app$expect_values(output = "num")
})

test_that("{shinytest2} recording: minimal", {
  app <- AppDriver$new(name = "minimal")
  app$expect_values(output = "num")
})
test_that("{shinytest2} recording: ideal", {
  app <- AppDriver$new(name = "ideal")

  expect_equal(
    app$get_value(export = "num"),
    344
  )

  app$set_inputs(penguin_species = "Adelie")
  expect_equal(
    app$get_value(export = "num"),
    154
  )

})
