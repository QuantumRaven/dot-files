function nos-sync
	command sudo rsync -avhP ~/workspace/github_projects/quantumraven/nixos/hosts/andromeda/configuration.nix /etc/nixos/
	command rsync -avhP ~/workspace/github_projects/quantumraven/nixos/modules /etc/nixos/
end
