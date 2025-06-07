function tarring_backups

    set BACKUP_DIR "/home/$USER/mounts/backups/"

    echo -e "\nName of tar file: "
    read TAR_FILE

    echo -e "\nSource content: "
    read SOURCE_CONTENT

    tar --exclude='.*' --exclude='workspace' -cvJf $BACKUP_DIR$TAR_FILE.tar.xz $SOURCE_CONTENT

end
