function sync_templates

    set -x SOURCE "/home/quantumcrow/workspace/github_projects/quantumraven/template-files/"

    fd "$SOURCE"

    echo -e "\nChoose file: "
    read FILE

    echo -e "\nWhere to sync file: "
    read DEST

    rsync "$SOURCE""$FILE" "$DEST"

end
