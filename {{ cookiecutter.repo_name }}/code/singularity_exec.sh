# Load variables for bind_path, singularity_image, IP_WORKSTATION, rstudio_home, project_home
source ../.project_settings.sh

cd ..

# Paths to bind (for singularity exec command, --bind flag)
bind_path=${bind_path}

# Path of the singularity image to run rstudio-server
singularity_image=${singularity_image}

# Define home dir
project_home=${project_home}

singularity exec --cleanenv \
   -H ${project_home} \
   --bind=${bind_path} \
   --bind="/home" \
   ${singularity_image} \
    "$@"