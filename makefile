all: build lint_lib shpec

#paths 
program_name := "dot"

#tools
log := "./tool/build_log.sh"
lint_lib := "./tool/lint_lib.sh"
shpec := "./tool/shpec"

build: 
	$(log) build
	gpp -I ./lib main.sh -o $(program_name)
	chmod 755 $(program_name)
	
shpec:
	$(log) test
	bash $(shpec) test/*

lint:
	$(log) lint $(program_name) 
	shellcheck -s bash $(program_name)

lint_lib:
	$(log) lint lib
	$(lint_lib)

clean:
	$(log) clean
	rm $(program_name)

watch:
	find . -name "*.sh" | entr -c make

