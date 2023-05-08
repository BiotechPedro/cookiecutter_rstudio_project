#!/bin/sh

# Load variables for bind_path, singularity_image, rstudio_home, project_home
source ../../.project_settings.sh

#-------------------------------------------------------------------------
# DECLARE PATH VARIABLES
#-------------------------------------------------------------------------
# Paths to bind (for singularity exec command, --bind flag)
bind_path=${bind_path}

# Path of the singularity image to run rstudio-server
singularity_image=${singularity_image}

# Define the path where R packages will be installed
r_version={{cookiecutter.r_version}}
rstudio_home=${rstudio_home}

# Define project home dir
project_home=${project_path}


#-------------------------------------------------------------------------
# CREATE RLIB FOLDER AND RENVIRON
#-------------------------------------------------------------------------
r_packages="${rstudio_home}/Rstudio-${r_version}-lib"
mkdir -p ${r_packages}

# User-installed R packages go into their custom home directory
# Add also user-installed R packages into R_LIBS to force R to load those packages over those in the singularity image.
if [ ! -e ${home}/.Renviron ]
then
  printf '\nNOTE: creating ~/.Renviron file\n\n'
  echo "R_LIBS_USER=${r_packages}" >> ${home}/.Renviron
  echo "R_LIBS=${r_packages}:/usr/local/lib/R/site-library:/usr/local/lib/R/library:/usr/lib/R/library" >> ${home}/.Renviron
fi

#-------------------------------------------------------------------------
# FORCE CHARACTER ENCODING (not mandatory)
#-------------------------------------------------------------------------
export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"


#-------------------------------------------------------------------------
# RUN RSTUDIO SERVER FROM SINGULARITY
#-------------------------------------------------------------------------
# This example bind mounts the /hpcnfs directory on the host into the Singularity container.
# By default the only host file systems mounted within the container are $HOME, /tmp, /proc, /sys, and /dev.
singularity shell --cleanenv \
   -H ${home} \
   --bind=${bind_path} \
   --bind="/home" \
   ${singularity_image}
