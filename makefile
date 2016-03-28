all: _build _lint_lib _test

#paths 
program := dot
watch_files := "*.sh"

#tools
log := "./tool/build_log.sh"
lint_lib := "./tool/lint_lib.sh"
build_test := "./tool/build_test.sh"
shpec := "./tool/shpec"
shellcheck := "./tool/shellcheck"

lint:
	$(log) lint $(program) 
	$(shellcheck) -s bash $(program)

watch:
	find . -name $(watch_files) | entr -c make

clean:
	$(log) clean
	rm $(program)

_build: 
	$(log) build
	gpp -I ./lib main.sh -o $(program)
	chmod 755 $(program)
	
_build_test:
	$(log) build test
	$(build_test)

_lint_lib:
	$(log) lint lib
	$(lint_lib)

_test: _build_test
	$(log) test
	$(shpec)
