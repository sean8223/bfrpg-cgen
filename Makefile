.PHONY: clean all sources deps info

SOURCES:=$(subst src,site,$(shell find src -name "*.js" -o -name "*.css" -o -name "*.html"))

DEPS:=$(subst .dep,,$(subst src,site,$(shell find src -name "*.dep")))

all: sources deps

sources: $(SOURCES)

deps: $(DEPS)

clean:
	rm -rf site
	find . -name "*~" -exec rm -f {} \;

site/%: src/%.dep
	@mkdir -p $(dir $@)
	curl -fsq `cat $<` > $@

site/%: src/%
	@mkdir -p $(dir $@)
	cp $< $@

info:
	@echo $(SOURCES)
	@echo $(DEPS)

