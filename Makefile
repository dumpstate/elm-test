NAME=elm-test
MATERIALIZE=./bower_components/Materialize/dist
DIST=./dist
SRC=./src
VERSION=`cat ../elm-package.json | grep '"version"' | sed s/[version\|,\|\"\|:\|[:blank:]]//g`

all: clean dist

install:
	bower install -y
	elm-package install -y

clean:
	rm -rf $(DIST)

clean-all: clean
	rm -rf ./bower_components/ ./elm-stuff/

dist:
	mkdir -p $(DIST)/js
	mkdir -p $(DIST)/css
	cp $(MATERIALIZE)/css/materialize.min.css $(DIST)/css/
	cp $(SRC)/index.html $(DIST)
	elm-make $(SRC)/Main.elm --output $(DIST)/js/elm.js

package: dist
	cd $(DIST) && tar cJvf $(NAME)-$(VERSION).tar.xz ./*

.PHONY: install clean clean-all dist package
