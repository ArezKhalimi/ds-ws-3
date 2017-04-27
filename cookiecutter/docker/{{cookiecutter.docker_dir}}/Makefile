.ONESHELL:

build:
	export COMPOSE_FILE=common.yml:build.yml:image.yml
	docker-compose build api_django
	docker-compose run --rm api_django
	docker-compose down -v
	docker-compose build api_django_build
	docker-compose build api_postgres

push:
	export COMPOSE_FILE=common.yml:build.yml:image.yml
	docker-compose push api_django
	docker-compose push api_postgres

test:
	export COMPOSE_FILE=common.yml:depends.yml:test.yml
	docker-compose run --rm api_django
	docker-compose down -v

release:
	git describe --always

ci_env:
	echo PROJECT_VERSION=`git describe --always`
	echo COMPOSE_PROJECT_NAME=${BUILD_TAG}
	echo PROJECT_NAME=skeleton
	echo HUB_HOST=hub.haos616.com
	echo LOCAL_USER_ID=`id -u`
