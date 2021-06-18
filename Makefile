.PHONY: build test

NAME=lucor/bats
VERSION=0.4.1

build:
	docker build \
		--tag $(NAME):latest \
		--tag $(NAME):$(VERSION) \
		.

test: build
	docker run --rm -t -v $(CURDIR)/tests:/tests $(NAME) bats /tests/test_image.bats
