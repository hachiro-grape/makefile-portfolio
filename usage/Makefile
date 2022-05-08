##
## Usage

SHELL := /bin/bash

##
## Target
.PHONY: usage
usage: ### is automatically generated from comments.
	@$(GREP) -h '#[#]' $(MAKEFILE_LIST) | $(SED) -e 's/\(^.*\)\( \)\(#[#]\+\)\(.*$$\)/\3\2\1\4/' -e 's/#[#]//' -e 's/#/$(INDENT_CHAR)/g'

.PHONY: showme
showme: ### makes this Makefile easy to see.
	@$(GREP) -vh '^\s*#' $(MAKEFILE_LIST)

##
## Note
### > Usage indentation rules are as follows:
###   ＃＃  -> top level
###   ＃＃＃  -> 1 level down
###   ＃＃＃＃  -> 2 level down
###   ...
##
### > Indent character is '\ '(space) and '\\t'(tab).
INDENT_CHAR := '\ ' ##### space is default.

##
### > Single＃ is not included in usage.
# Command variables
GREP := grep
SED := sed

##
### > This Makefile works with GNU commands.
###   You can redefine command variables by including the following file.
-include cmdredef.mk #####
