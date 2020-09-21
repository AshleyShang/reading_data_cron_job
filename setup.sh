docker run -d --rm --name mydb \
  -v $HOME/path/to/deathDB/pgdata:/var/lib/postgresql/data \
  -e POSTGRES_PASSWORD=secret \
  -p 6666:5432 \
  postgres:alpine
