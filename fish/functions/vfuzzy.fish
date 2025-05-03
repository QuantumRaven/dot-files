function vfuzzy

  fd -H -t f | fzf --preview "bat {}" --bind "enter:execute(nvim {})" --reverse
  
end
