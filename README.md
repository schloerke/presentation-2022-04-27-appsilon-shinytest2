# `{shinytest2}`: Regression Testing for Shiny Applications

## Event
2022 Appsilon Shiny Conference <br />
April 27, 2022 <br />
https://appsilon.com/shiny-conference/ <br />
https://hopin.com/events/shinyconference2022

## Slides

* HTML:
http://schloerke.com/presentation-2022-04-27-appsilon-shinytest2/

* PDF:
http://schloerke.com/presentation-2022-04-27-appsilon-shinytest2/appsilon-shinytest2.pdf

* Recording: https://www.youtube.com/watch?v=EOVPBN5o8F8&list=PLexAKolMzPcrYjGA1PULfm7-P12qjKmPb&index=8&t=13s&pp=iAQB


## Resources for learning more

* [`{shinytest2}`](https://rstudio.github.io/shinytest2/) [:octocat:](https://github.com/rstudio/shinytest2): Regression Testing for Shiny Applications

* [`{testthat}`](https://testthat.r-lib.org/) [:octocat:](https://github.com/r-lib/testthat/): Unit Testing for R

* [`{shiny}`](https://https://shiny.rstudio.com/) [:octocat:](https://github.com/rstudio/shiny): Web Application Framework for R

* :book: Mastering Shiny, [Chapter 21: Testing](https://mastering-shiny.org/scaling-testing.html)
* :book: R Packages, [Chapter 12: Testing](https://r-pkgs.org/tests.html)


## Abstract

Manually testing Shiny applications is often laborious, inconsistent, and doesn’t scale well. Whether you are developing new features, fixing bug(s), or simply upgrading dependencies on a serious app where mistakes have real consequences, it is critical to know when regressions are introduced. The new `{shinytest2}` R package provides a streamlined toolkit for unit testing Shiny applications and seamlessly integrates with the popular `{testthat}` framework for unit testing R code. Under the hood, it uses the new `{chromote}` R package to render applications in a headless Chrome browser, opening a new world of possibilities such as live preview, better debugging tools, and/or simply using modern JavaScript/CSS. In this talk, you’ll learn how to test Shiny applications by simply recording your actions as code and extending it to test more particular aspects of your application, resulting in fewer bugs and more confidence in future development.

> _Updated_
