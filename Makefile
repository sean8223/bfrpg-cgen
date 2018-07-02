.PHONY: clean site

clean:
	rm -rf site
	find . -name "*~" -exec rm -f {} \;

site:
	rsync -Cavz src/ site/
