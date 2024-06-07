.PHONY: all install pkgs

DIRS = dwm dmenu scroll slock slstatus st

all: install stow

install:
	for dir in $(DIRS); do\
		cd $$dir && rm config.h && sudo make install && cd ..; \
	done

stow:
	stow home -t ~
	stow Pictures -t ~/Pictures
	stow config -t ~/.config
	stow localbin -t ~/.local/bin

pkgs:
	while IFS= read -r pkg; do
		pkcon install "$pkg"
	done < pkgs
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
