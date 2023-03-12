# pg-compose

`docker-compose.yaml` PostgreSQL setup. Just for my own notes.

- `postgresql` - database server
- `pgweb` - browser-based admin ui
- `pgbouncer` - connection pooler


## `.justfile`

```shell
up         # start services
down *args # destroy services. use `down -v` to delete data volume
connect    # shell into a psql client connected to pooler
```
