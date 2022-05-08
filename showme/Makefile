##
## Showme
SHELL := /bin/bash

include ../usage/Makefile

##
## Target
.PHONY: showme
showme: ### makes this Makefile easy to see.
	@$(GREP) -vh '^\s*#' $(MAKEFILE_LIST)

##
## Note
# Command variables
GREP := grep

##
### > This Makefile works with GNU commands.
###   You can redefine command variables by including the following file.
-include cmdredef.mk #####
