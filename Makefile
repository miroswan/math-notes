# Find all Makefiles in the current directory and subdirectories
MAKEFILES := $(wildcard **/Makefile)

# Define a rule to execute each Makefile
.PHONY: $(MAKEFILES)
all: $(MAKEFILES)

$(MAKEFILES):
	# Call Make in the directory containing the current Makefile
	echo $@
	$(MAKE) -C $(dir $@)