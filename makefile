all: build lint

build: 
	gpp -I ./lib main.sh -o dot-cli
	chmod 755 dot-cli
	
lint:
	shellcheck dot-cli

t: 

