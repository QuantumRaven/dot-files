function sync_templates

    set -x SOURCE "/home/quantumcrow/github_projects/template-files/"

    ll "$SOURCE"

    echo -e "\nChoose file: "
    read FILE

    echo -e "\nWhere to sync file: "
    read DEST

    rsync "$SOURCE""$FILE" "$DEST"

end
