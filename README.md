
Introduction to R + OSM
=======================

This is a workshop put together by Angela Li of the [Center for Spatial Data Science (CSDS)](https://spatial.uchicago.edu) at UChicago for [State of the Map 2018](https://2018.stateofthemap.us).

Learning Objectives
-------------------

By the end of this workshop, workshop attendees should be able to:

1.  Install useful R packages
2.  Download OSM data from the OpenStreetMap API, using the `osmdata` R package
3.  Map downloaded OSM data in R
4.  Understand the two formats in which R stores spatial data

⭐️ Do This Now! ⭐️
------------------

### Install Necessary Packages

Open RStudio and paste the following code into your console, then press Enter to run it:

``` r
# Download packages from CRAN
install.packages(c("devtools", "knitr", "magrittr", "sf", "sp", "rmarkdown", "usethis"))

# Download the osmdata package from Github
devtools::install_github("ropensci/osmdata")
```

### Download Lesson Materials

Download this entire lesson (all code, notebooks, and data) to your computer desktop by running the following code in your RStudio console. Respond `yes` to all prompts:

``` r
usethis::use_course("https://github.com/angela-li/sotmus-r/archive/master.zip")
```

Once you've downloaded this lesson, open the `.Rproj` file to get started.

Use the `sotmus-r-complete.Rmd` notebook as a guide to fill out the `sotmus-r.Rmd` lesson notebook.

Contents
--------

-   [`code`](): Raw R code generated from notebooks
-   [`data`](): Intermediate R data objects (to be used in case of bad Internet connection)
-   [`notebooks`](): R Markdown notebooks with R code, produced during workshop. Includes empty notebook and filled-out notebook.
-   [`slides`](): Intro slides

Troubleshooting
---------------

If you're running into issues with RTools (mostly Windows users), check out this [solution on Github](https://github.com/r-lib/devtools/issues/1772#issuecomment-393669488).

Typing ? before your R command in the console will bring up function documentation in R.

Contact Me
----------

Feel free to email me at <ali6@uchicago.edu> or reach out [on Twitter](https://twitter.com/CivicAngela) for questions! Or submit a Github Issue on this page for problems.

Additional Resources
--------------------

-   `osmdata` [package website](https://ropensci.github.io/osmdata/index.html), [Github](https://github.com/ropensci/osmdata)
-   `sf` [package website](https://r-spatial.github.io/sf/), [Github](https://github.com/r-spatial/sf/)
-   [overpass turbo website](http://overpass-turbo.eu): try out sample Overpass API queries
-   [Overpass API Documentation](https://wiki.openstreetmap.org/wiki/Overpass_API/Overpass_API_by_Example): examples for learning more about structuring API queries to OpenStreetMap
-   [*Geocomputation in R*](https://geocompr.robinlovelace.net): free online book about analyzing, visualizing, and modeling spatial data in R
-   [*R for Data Science*](http://r4ds.had.co.nz): free online book about doing data science in R

References
----------

Thanks to [Mark Padgham](https://github.com/mpadge) and [rOpenSci](https://ropensci.org/) for maintaining the osmdata package!

Thanks to [Jared Lander](https://swcarpentry.github.io/r-novice-gapminder/), [Chris Prener](https://github.com/slu-dss/lesson-template), [Jenny Bryan](https://github.com/jennybc/whattheyforgot), [Software Carpentry](https://swcarpentry.github.io/r-novice-gapminder/), and [RStudio Education](https://github.com/rstudio-education/datascience-box) for informing the design of this workshop repository. In the same vein, please feel free to use this workshop as a template for your own R workshop. (If you do, give me a hoot!)
