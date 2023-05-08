import os

project_path = os.getcwd()

# https://github.com/cookiecutter/cookiecutter/issues/955
with open('.project_settings.sh', 'r') as f:
    content = f.read()

# replace tag by install path
content = content.replace('REPLACE_ME_PROJECT_HOME', project_path)

# replace file content
with open('.project_settings.sh', 'w') as f:
    f.write(content)

print(f'\033[0;32mSuccessfully generated {project_path}. These are the contents of the configuration file:\n\033[0m')
print(content)