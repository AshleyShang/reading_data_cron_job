FROM postgres:alpine
COPY *.sql /docker-entrypoint-initdb.d/
ADD create_table.sql /docker-entrypoint-initdb.d
RUN chmod a+r /docker-entrypoint-initdb.d/*
EXPOSE 6666