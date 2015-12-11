NAME=elm-table
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
	mkdir -p $(DIST)/font
	cp $(MATERIALIZE)/css/materialize.min.css $(DIST)/css/
	cp -R $(MATERIALIZE)/font/* $(DIST)/font/
	cp $(SRC)/index.html $(DIST)
	elm-make $(SRC)/Main.elm --output $(DIST)/js/elm.js

package: clean-all install dist
	cd $(DIST) && tar cvf $(NAME)-$(VERSION).tar.gz ./*

.PHONY: install clean clean-all dist package
