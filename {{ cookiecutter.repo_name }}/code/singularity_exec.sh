cd ..

# Paths to bind (for singularity exec command, --bind flag)
bind_path={{cookiecutter.path_to_bind}}

# Path of the singularity image to run rstudio-server
singularity_image={{cookiecutter.path_to_image}}

# Define home dir
project_home={{cookiecutter.project_home}}

singularity exec --cleanenv \
   -H ${project_home} \
   --bind=${bind_path} \
   --bind="/home" \
   ${singularity_image} \
    "$@"