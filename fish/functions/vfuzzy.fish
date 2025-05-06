function vfuzzy

  fd -H -E .git -t f | fzf --preview "bat {}" --bind "enter:execute(nvim {})" --reverse
  
end
