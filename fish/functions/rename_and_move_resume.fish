function rename_and_move_resume

    set -x SOURCE "/home/quantumcrow/Downloads/"

    ll "$SOURCE" | grep -iE "resume".pdf

    echo -e "\nChoose resume file: "
    read FILE

    echo -e "\nNew file name: "
    read RESUMENAME

    mv "$SOURCE""$FILE" /home/quantumcrow/Documents/career/pdf/"$RESUMENAME"

end
