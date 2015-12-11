all: clean prepare dist

clean:
	rm -rf ./dist

prepare:
	mkdir -p ./dist/js
	mkdir -p ./dist/css
	mkdir -p ./dist/font

dist:
	cp ./src/index.html ./dist/
	elm-make ./src/Main.elm --output ./dist/elm.js

.PHONY: clean prepare dist
