.PHONY: serve build install clean check

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