all: index.html

index.html: make.coffee template.txt index.md
	./node_modules/.bin/coffee make.coffee
