PREFIX?=/usr/local

build:
		swift build --disable-sandbox -c release

install: build
		mkdir -p "$(PREFIX)/bin"
		cp -f ".build/release/alticns" "$(PREFIX)/bin/alticns"