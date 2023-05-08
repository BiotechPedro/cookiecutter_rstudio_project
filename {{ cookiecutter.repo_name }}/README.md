{{cookiecutter.project_name}}
==============================

{{cookiecutter.description}}

Project Organization
--------------------

    ├── analysis                                <- qmd files containing the code for the analyses. Naming convention is a number (for ordering) with a short (`-` delimited) description, e.g. `01-Exploratory-Analysis.qmd`. 
    │   └── index.qmd
    ├── code                                    <- Non-R scripts that will be used in this project.
    │   ├── Makefile                            <- Makefile to automatically run quarto_render in the background.
    │   └── singularity_exec.sh                 <- Bash script executed by the Makefile to run quarto_render with singularity
    ├── {{ cookiecutter.repo_name }}.Rproj      <- Create Rstudio project
    ├── data                                    <- Any kind of data (raw, processed, output from pipelines, etc) that will be used for the project
    ├── docs                                    <- Rendered html reports of qmd files
    ├── misc                                    <- Other files
    ├── output                                  <- Output plots and files from qmd files
    ├── _quarto.yml                             <- Configuration of Quarto settings, html display, webpage, etc.
    ├── README.md                               <- The top-level README for developers using this project.
    ├── software                                <- Folder in which to install software/packages used for the project that are outside the singularity image.
    │   └── rstudio
    │       ├── launch-rserver.sh               <- Script to launch rstudio-server from a remote machine (such as a workstation).
    │       └── run_ssh_singularity_vscode.sh   <- Script to work inside the singularity image from vscode. It allows to work in R/python/whatever without rstudio-server.
    ├── src                                     <- Source code for use in this project (R)
    ├── styles.css                              <- CSS file to style the webpage
    └── theme.scss                              <- SCSS file to style the webpage

Usage
-----

In order to run rstudio-server, first make sure that the ip address to the remote is correct. Then, execute the following code from the root directory of the project ({{cookiecutter.project_name}}):

```bash
cd software/rstudio
bash launch-serserver.sh
```

The scripts `software/rstudio/launch-rserver.sh`, `software/rstudio/run_ssh_singularity_vscode.sh` and `code/singularity_exec.sh` will read the configuration file `.project_settings.sh`. The path to `.project_settings.sh` is relative to the folders where those scripts are located, so they must be executed in place. If you want to change that behavior, you can change the path to `.project_settings.sh` inside those scripts. The motivation for this way of accessing `.project_settings.sh` is to make the project as portable as possible, to me able to move it from different machines without the need to change anything in the configuration files.