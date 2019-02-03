.PHONY: clean site

SITE:=site/

site:
	rsync -Cavz src/ $(SITE)

clean:
	rm -rf site
	find . -name "*~" -exec rm -f {} \;

