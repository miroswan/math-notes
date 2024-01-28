# Find all Makefiles in the subdirectories
MAKEFILES := $(shell find . -mindepth 2 -name Makefile)

# Define a rule to execute each Makefile in the corresponding
# directory.
.PHONY: build 
build: 
	@$(foreach file,$(MAKEFILES),make -C $(dir $(file));)

.PHONY: install_dependencies
install_dependencies:
	@sudo apt update -y
	@sudo DEBIAN_FRONTEND=noninteractive apt install -y texlive-full texlive-latex-recommended latexmk make
