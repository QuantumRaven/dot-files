function nos-switch
	sudo rsync -avhP . /etc/nixos/
	cd /etc/nixos/
	sudo nixos-rebuild switch
	cd -
end
