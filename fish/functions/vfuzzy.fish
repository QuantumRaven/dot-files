function vfuzzy

  set select_file (fd -H -E .git -t f | fzf --preview "bat {}" --bind "enter:execute(nvim {})" --reverse)

  if test -n "$select_file"
    nvim "$select_file"
  else
    echo "No file selected. Enter new file name: "
    read new_file
    nvim "$new_file"
  end
  
end
