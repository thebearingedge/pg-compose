[private]
default:
  @just --list --unsorted --list-heading '' --list-prefix ''

up:
  docker compose up --build -d

down *args:
  docker compose down {{args}}

connect:
  docker compose exec -it client /bin/sh -c 'psql $DATABASE_URL'
