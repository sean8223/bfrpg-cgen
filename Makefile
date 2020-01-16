.PHONY: clean all

all: site/css/font-awesome.min.css site/css/bootstrap.min.css site/fonts/fontawesome-webfont.eot site/fonts/fontawesome-webfont.woff2 site/fonts/fontawesome-webfont.woff site/fonts/fontawesome-webfont.ttf site/fonts/fontawesome-webfont.svg
	rsync -Cavz src/ site

site/css site/js site/fonts:
	mkdir -p $@

site/fonts/fontawesome-webfont.eot site/fonts/fontawesome-webfont.woff2 site/fonts/fontawesome-webfont.woff site/fonts/fontawesome-webfont.ttf site/fonts/fontawesome-webfont.svg: site/fonts
	curl -fsq https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/$(subst site/,,$@) > $@ 

site/css/bootstrap.min.css: site/css
	curl -fsq https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css > $@

site/css/font-awesome.min.css: site/css
	curl -fsq https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css > $@

clean:
	rm -rf site
	find . -name "*~" -exec rm -f {} \;

