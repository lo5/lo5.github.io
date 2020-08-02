all:
	node make.js

run:
	./node_modules/.bin/browser-sync start --server --files "*.html, *.css"

watch:
	while inotifywait -e close_write index.md; do make; done
