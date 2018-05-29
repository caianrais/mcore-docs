.PHONY: docs

AGLIO=./node_modules/.bin/aglio
THEME=flatly
FLAGS=--no-theme-condense

SOURCE=./docs/index.apib
DEST=./docs/index.html

RECIPE=$(AGLIO) -i $(SOURCE) --theme-variables $(THEME) -o $(DEST) $(FLAGS)

build:
	bash deploy.sh

docs:
	$(RECIPE)

live:
	$(RECIPE) -s
