NAME = socks-factory/catalogue
DBNAME = socks-factory/catalogue-db

TAG=$(TRAVIS_COMMIT)

INSTANCE = catalogue

.PHONY: default copy test

default: catalogue

release:
	docker build -t $(NAME) -f ./docker/catalogue/Dockerfile .

test: 
	GROUP=weaveworksdemos COMMIT=test ./scripts/build.sh
	./test/test.sh unit.py
	./test/test.sh container.py --tag $(TAG)
catalogue:
	CGO_ENABLED=0 go build -o catalogue cmd/cataloguesvc/main.go

clean:
	rm catalogue
