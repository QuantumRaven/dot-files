function okular_reading

  fd -t f -e .pdf -E ~/go | fzf --preview "bat {}" --bind "enter:execute(flatpak run org.kde.okular {})" --reverse

end
