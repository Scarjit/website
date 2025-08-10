.PHONY: serve build install clean check serve-static

install:
	npm run install

serve: install check
	./zola serve

check:
	./zola check --skip-external-links

build:
	./zola build

clean:
	rm -rf public/

update-theme:
	git submodule update --remote themes/terminus

serve-static: build
	cd public && python3 -m http.server 8000