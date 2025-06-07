function nos-sync
	sudo rsync -avhP ~/workspace/github_projects/quantumraven/nixos/hosts/andromeda/configuration.nix /etc/nixos/
	rsync -avhP ~/workspace/github_projects/quantumraven/nixos/modules /etc/nixos/
end
