FROM mysql:5.7

# Uncomment these lines if you want to set default values for environment variables
# ENV MYSQL_ROOT_PASSWORD DEFAULT_PASS
# ENV MYSQL_ALLOW_EMPTY_PASSWORD=true
# ENV MYSQL_DATABASE=socksdb

# Copy dump.sql into the MySQL initialization directory
COPY data/dump.sql /docker-entrypoint-initdb.d/
