all:
	./node_modules/.bin/coffee make.coffee

setup:
	npm ci

run:
	./node_modules/.bin/browser-sync start --server --files "*.html, *.css"

done:
	./node_modules/.bin/coffee done.coffee

watch:
	find *.md | entr make

push: all
	git add . && git commit -m . && git push
