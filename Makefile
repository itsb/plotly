all: build

build:
	docker build -t itsb/plotly .

.PHONY: all build
