all: _build _lint _test

watch:
	find . -name "*.sh" | entr -c make

clean:
	./tools/build_log.sh clean
	rm -rf shpec
	rm dot-cli

_build: 
	./tools/build_log.sh build
	gpp -I ./lib main.sh -o dot-cli 
	chmod 755 dot-cli
	
_lint:
	./tools/build_log.sh lint
	shellcheck -s bash dot-cli

_test:
	./tools/build_log.sh test
	./tools/build_test.sh
	shpec
