function vfuzzy

  fd -t f | fzf --preview "bat {}" --bind "enter:execute(nvim {})"
  
end
