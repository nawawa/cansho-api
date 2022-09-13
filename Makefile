up:
	docker compose up -d

down:
	docker compose down

ps:
	docker compose ps

build:
	docker compose up -d --build

create:
	docker compose exec app bash -c 'composer create-project --prefer-dist "laravel/laravel=9.*" . && chmod -R 777 storage bootstrap/cache'

app:
	docker compose exec app bash

db:
	docker compose exec db bash -c 'psql -d $$POSTGRES_DB -U $$POSTGRES_USER'

migrate:
	docker compose exec app bash -c 'php artisan migrate'

fresh:
	docker compose exec app bash -c 'php artisan migrate:fresh'

seed:
	docker compose exec app bash -c 'php artisan migrate:fresh --seed'