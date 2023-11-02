FROM mysql:8.0.33
LABEL "Project"="Vprofile"
LABEL "Author"="Worachai"

# ENV MYSQL_ROOT_PASSWORD="tempPassword"
ENV MYSQL_DATABASE="accounts"

ADD db_backup.sql /docker-entrypoint-initdb.d/db_backup.sql

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]