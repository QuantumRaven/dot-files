#!/usr/bin/env fish

# List podman volumes
podman volume ls

# Choose volume for exporting
echo -e "\nWhich volume to export? "
read VOLUME

# Designate name for tar file
echo -e "\nName of tar file? "
read TAR

# Export to tar file
podman volume export "$VOLUME" --output "$TAR"_(date +%d-%m-%Y_%H%m).tar
