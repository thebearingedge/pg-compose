[private]
default:
  @just --list --unsorted --list-heading '' --list-prefix ''

# start services
up:
  docker compose up --build -d

# destroy services. use `down -v` to delete data volume
down *args:
  docker compose down {{args}}

# shell into a psql client connected to pooler
connect:
  docker compose exec -it client /bin/sh -c 'psql $DATABASE_URL'
