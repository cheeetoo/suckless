install:
	cd dwm && sudo make clean install
	cd dmenu && sudo make clean install
	cd scroll && sudo make clean install
	cd slock && sudo make clean install
	cd slstatus && sudo make clean install
	cd st && sudo make clean install
	stow home -t ~
