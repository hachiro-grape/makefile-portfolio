.DEFAULT_GOAL := help

.PHONY: help
help:
	@grep '##[ ]' $(MAKEFILE_LIST) | tr -d '#'

.PHONY: init
init:  ## 
	cat .inittarget | sh

.PHONY: clean
clean:  ## 
	cat .cleantarget | sh

# tmpdir = $(shell mktemp -d .tmp$@.XXXXXX)

htmlsrcdir := srctest
htmltmpls = $(shell find $(htmlsrcdir) -type f -name '*.html.tmpl')
htmls = $(htmltmpls:%.html.tmpl=%.html)
# htmldeps = $(htmltmpls:%.html.tmpl=%.html.deps)
# htmls = $(patsubst %.html.tmpl,%.html,$(htmltmpls)) # substでも事足りる？
.PHONY: htmlbuild
htmlbuild: $(htmls) ## 
	# $(eval tmp := $(tmpdir))
	# echo $(htmltargets)
	# echo $(tmp)
	# #rm -rf $(tmp)

.html.tmpl.html:
	echo $^
	echo $@

%.html: %.html.tmpl srctest/_common/_meta.html.prtl srctest/_common/_body.html.prtl
	sh 2html.sh $^  > $@

# -include $(htmldeps)

.PHONY: jsbuild
jsbuild:  ## 
	echo 'jsbuild'

.PHONY: cssbuild
cssbuild:  ## 
	echo 'cssbuild'

.PHONY: test
test:  ## 
	echo $(tmpA)