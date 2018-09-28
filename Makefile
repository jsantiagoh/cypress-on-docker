PHONY: build run

videos_dir = $(shell pwd)/videos

build:
	docker build -t ctest .

run: build
	mkdir -p videos; docker run -v "$(videos_dir):/cypress/videos" ctest
