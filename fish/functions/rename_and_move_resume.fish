function rename_and_move_resume

    set SOURCE "/home/quantumcrow/Downloads/"

    ll "$SOURCE" | grep -iE "resume".pdf

    echo -e "\nChoose resume file: "
    read FILE

    echo -e "\nNew file name: "
    read RESUMENAME

    rsync -avhP "$SOURCE""$FILE" "$HOME"/Documents/career/pdf/"$RESUMENAME"

end
