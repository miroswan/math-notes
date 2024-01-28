# Find all Makefiles in the current directory and subdirectories
MAKEFILES := $(shell find . -mindepth 2 -name Makefile)

# Define a rule to execute each Makefile
.PHONY: build 
build: 
	@$(foreach file,$(MAKEFILES),make -C $(dir $(file));)
