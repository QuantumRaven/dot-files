function wzed

  fd -H -t f | fzf --preview "bat {}" --bind "enter:execute(zeditor {})" --reverse
  
end
