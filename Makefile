.PHONY: all install

DIRS = dwm dmenu scroll slock slstatus st

all: install stow

install:
	for dir in $(DIRS); do\
		cd $$dir && rm config.h && sudo make install && cd ..; \
	done

stow:
	stow home -t ~
	stow Pictures -t ~/Pictures
