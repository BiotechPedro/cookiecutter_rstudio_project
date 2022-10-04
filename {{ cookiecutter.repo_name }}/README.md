{{cookiecutter.project_name}}
==============================

{{cookiecutter.description}}

Project Organization
------------

    ├── analysis                           <- qmd files containing the code for the analyses. Naming convention is a number (for ordering) with a short (`-` delimited) description, e.g. `01-Exploratory-Analysis.qmd`. 
    │   └── index.qmd
    ├── code                               <- Non-R scripts that will be used in this project
    ├── {{ cookiecutter.repo_name }}.Rproj <- Create Rstudio project
    ├── data                               <- Any kind of data (raw, processed, output from pipelines, etc) that will be used for the project
    ├── docs                               <- Rendered html reports of qmd files
    ├── misc                               <- Other files
    ├── output                             <- Output plots and files from qmd files
    ├── _quarto.yml                        <- Configuration of Quarto settings, html display, webpage, etc.
    ├── README.md                          <- The top-level README for developers using this project.
    ├── src                                <- Source code for use in this project (R)
    ├── styles.css                         <- CSS file to style the webpage
    └── theme.scss                         <- SCSS file to style the webpage