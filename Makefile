.PHONY: serve build install clean check serve-static

install:
	curl -L -O https://github.com/getzola/zola/releases/download/v0.21.0/zola-v0.21.0-x86_64-unknown-linux-gnu.tar.gz
	tar -xzf zola-v0.21.0-x86_64-unknown-linux-gnu.tar.gz
	chmod +x ./zola
	ls -la
	ldd ./zola

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

build-ci: install check
	./zola build --output-dir /tmp/output/files/