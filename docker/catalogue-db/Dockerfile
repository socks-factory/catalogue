FROM mysql:9.3

# ENV MYSQL_ROOT_PASSWORD DEFAULT_PASS
# ENV MYSQL_ALLOW_EMPTY_PASSWORD=true
# ENV MYSQL_DATABASE=socksdb

COPY ./data/dump.sql /docker-entrypoint-initdb.d/

