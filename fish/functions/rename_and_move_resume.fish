function sync_templates

    set -x SOURCE "/home/quantumcrow/Downloads/"

    ll "$SOURCE" | grep -iE "resume".pdf

    echo -e "\nChoose resume file: "
    read FILE

    echo -e "\nWhere to sync file: "
    read DEST

    mv "$SOURCE""$FILE" "$DEST"

end
