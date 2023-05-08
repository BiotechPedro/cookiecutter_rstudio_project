# Paths to bind (for singularity exec command, --bind flag)
bind_path={{cookiecutter.path_to_bind}}

# Path of the singularity image to run rstudio-server
singularity_image={{cookiecutter.path_to_image}}

# IP to remote from which rstudioserver will be executed
IP_WORKSTATION={{cookiecutter.ip_workstation}}

# Define the path where R packages will be installed
rstudio_home="REPLACE_ME_PROJECT_HOME/software/rstudio"

# Define project home dir
project_home="REPLACE_ME_PROJECT_HOME"