
dir=$(pwd)

sed 's/project_home=project_home/project_home=${dir}/g' software/rstudio/template-launch-rserver.sh