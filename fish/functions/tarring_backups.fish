function tarring_backups

    set BACKUP_DIR "/home/quantumcrow/backups/"
    set SOURCE_DIR "/home/quantumcrow/"

    l "$SOURCE_DIR"

    echo -e "\nName of tar file: "
    read TAR_FILE

    echo -e "\nSource content: "
    read SOURCE_CONTENT

    tar -cvzf $BACKUP_DIR$TAR_FILE.tar.gz $SOURCE_CONTENT

end
