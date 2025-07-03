#!/usr/bin/env fish

# Create ssh dir and config file
mkdir $HOME/.ssh
touch $HOME/.ssh/config

# Set permissions
chmod 700 $HOME/.ssh
chmod 600 $HOME/conifg

# Create root keys
ssh-keygen -t ed25519 -f $HOME/.ssh/root

# Create user keys
ssh-keygen -t ed25519 -f $HOME/.ssh/crow

# Set permissions of .pub keys
chmod 644 $HOME/.ssh/root.pub
chmod 644 $HOME/.ssh/crow.pub

# Set permissions of private keys
chmod 600 $HOME/.ssh/root
chmod 600 $HOME/.ssh/crow
