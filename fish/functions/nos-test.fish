function nos-test
	sudo -rsync -avhP . /etc/nixos/
	cd /etc/nixos/
	sudo nixos-rebuild test
	cd -
end
