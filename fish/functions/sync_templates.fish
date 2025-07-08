function sync_templates
    
    # Set source where rsync will pull from and cd into dir.

    set SOURCE "/home/$USER/workspace/github/quantumraven/template-files/"

    cd "$SOURCE"

    # List contents of SOURCE dir.
    # Using fd in place of lsd for filenames only.

    fd
    
    # Change from SOURCE dir back to current working dir.

    cd -

    # Prompt user to pick a file name and assign it to FILE variable

    echo -e "\nChoose file: "
    read FILE

    # Prompt user to pick where to store and what to name the file and assign it to the DEST variable.

    echo -e "\nWhere to sync file: "
    read DEST

    # Use rsync -avhP to synchronize the file from SOURCE/FILE to the designated DEST.

    rsync -avhP "$SOURCE""$FILE" "$DEST"

end
