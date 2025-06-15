#!/usr/bin/env fish

# Set user name and email
set -l user_name "QuantumRaven"
set -l user_email "quantumncorvidae@proton.me"

git config --global user.name "$user_name"
git config --global user.email "$user_email"

# Set default text editor
git config --global core.editor "nvim"  # or "vim", "code --wait", etc.

# Enable color in the Git output
git config --global color.ui auto

# Set up the default branch name
git config --global init.defaultBranch main

# Set up credential helper for caching credentials
git config --global credential.helper cache
