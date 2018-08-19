HUGO := hugo
NPM := npm
ASSETS_JS_DIR := assets/js/vendor/

install:
	$(NPM) install
update:
	$(NPM) update
build-bootstrap:
	mkdir -p $(ASSETS_JS_DIR)
	cp node_modules/jquery/dist/jquery.min.js $(ASSETS_JS_DIR)
	cp node_modules/popper.js/dist/umd/popper.min.js $(ASSETS_JS_DIR)
	cp node_modules/bootstrap/dist/js/bootstrap.min.js $(ASSETS_JS_DIR)
build: clean build-bootstrap
	HUGO_ENV=production $(HUGO) --source=exampleSite --themesDir=../..
	rm -fr resources/
	mv exampleSite/resources/ .
serve: clean build-bootstrap
	$(HUGO) server --source=exampleSite --themesDir=../..
	rm -fr resources/
	mv exampleSite/resources/ .

######################
generate-githubpages:
	rm -fr docs && HUGO_ENV=production $(HUGO) --baseURL https://marcanuy.github.io/hugotube/ --source=exampleSite --themesDir=../.. && mv exampleSite/public docs && touch docs/.nojekyll
clean:
	rm -fr exampleSite/public/
