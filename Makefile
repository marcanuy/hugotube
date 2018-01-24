NODE_SASS_BIN := node_modules/node-sass/bin/node-sass
HUGO := hugo
YARN := yarn

install:
	$(YARN) install
update:
	$(YARN) update
structure:
	mkdir -p static/js/vendor/ static/css/
css-compile:
	$(NODE_SASS_BIN) --output-style expanded --source-map true --source-map-contents true --precision 6 src/style.scss static/css/style.css
build-jquery:
	cp node_modules/jquery/dist/jquery.min.js static/js/vendor/
build-popper:
	cp node_modules/popper.js/dist/umd/popper.min.js static/js/vendor/
build-bootstrapjs:
	cp node_modules/bootstrap/dist/js/bootstrap.min.js static/js/vendor/

build: clean structure css-compile build-jquery build-popper build-bootstrapjs
	HUGO_ENV=production $(HUGO) --source=exampleSite --themesDir=../..
serve: clean structure css-compile build-jquery build-popper build-bootstrapjs
	$(HUGO) server --source=exampleSite --themesDir=../..

######################
generate-githubpages:
	rm -fr docs && HUGO_ENV=production $(HUGO) --baseURL https://marcanuy.github.io/hugotube/ --source=exampleSite --themesDir=../.. && mv exampleSite/public docs && touch docs/.nojekyll
clean:
	rm -fr exampleSite/public/
