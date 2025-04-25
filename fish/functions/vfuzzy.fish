function vfuzzy

  fdh -t f | fzf --preview "bat {}" --bind "enter:execute(nvim {})" --reverse
  
end
