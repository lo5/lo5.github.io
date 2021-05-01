all:
	./node_modules/.bin/coffee make.coffee

setup:
	npm ci

run:
	./node_modules/.bin/browser-sync start --server --files "*.html, *.css"

done:
	./node_modules/.bin/coffee done.coffee

watch:
	while inotifywait -e close_write *.md template.html make.coffee; do make; done

push:
	git add . && git commit -m . && git push
