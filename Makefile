.PHONY: postgres adminer migrate

postgres:
	docker run --rm -ti -p 5432:5432 -e POSTGRES_PASSWORD=secret postgres

adminer:
	docker run --rm -ti -p 8080:8080 adminer

migrate:
	migrate -source file://migrations -database postgres://postgres:pass@localhost:5432/postgres?ssl=disable up
