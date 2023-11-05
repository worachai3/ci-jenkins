FROM mysql:8.0.33
LABEL "Project"="Vprofile"
LABEL "Author"="Worachai"

ENV MYSQL_DATABASE="accounts"

# Run command echo MYSQL_ROOT_PASSWORD

ADD db_backup.sql /docker-entrypoint-initdb.d/db_backup.sql
# Run command echo Finish copying db_backup.sql
RUN echo Finish copying db_backup.sql

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]