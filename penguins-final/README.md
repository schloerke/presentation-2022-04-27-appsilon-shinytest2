# Features added

* Make a recording of:
  * Initial values
  * Download file
  * Specific output value

* Add `shiny::exportTestValues()` to server function
  * See updated values

* Adjust recording to be minimal

* Adjust recording to use `get_value()` and `{testthat}` expectation methods
  * This approach is ideal as no snapshot files are used
