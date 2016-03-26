all: _build _lint_lib _test

lint:
	./tools/build_log.sh lint dot-cli
	shellcheck -s bash dot-cli

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
	
_lint_lib:
	./tools/build_log.sh lint lib
	./tools/lint_lib.sh

_test:
	./tools/build_log.sh test
	./tools/build_test.sh
	shpec
