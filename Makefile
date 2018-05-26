.PHONY: docs

AGLIO=./node_modules/.bin/aglio
THEME=flatly
FLAGS=--no-theme-condense

SOURCE=./docs/mcore.apib
DEST=./docs/index.html

init:
	npm install

docs:
	$(AGLIO) -i $(SOURCE) --theme-variables $(THEME) -o $(DEST) $(FLAGS)
