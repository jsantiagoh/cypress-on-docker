PHONY: build run


build:
	docker build -t ctest .

run: build
	docker run ctest
