# First Part: Create if_folder if new_folder exists
if ((Test-Path -Path "new_folder" -PathType Container) -and -not (Test-Path -Path "if_folder")) 
{New-Item -Path "if_folder" -ItemType Directory}

# Second Part: Create hyperionDev or new-projects based on if_folder existence
if (Test-Path -Path "if_folder" -PathType Container) {
    New-Item -Path "hyperionDev" -ItemType Directory -Force}
else {
    New-Item -Path "new-projects" -ItemType Directory -Force}