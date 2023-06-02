FROM mysql:latest

COPY ./sql /docker-entrypoint-initdb.d/

ENV MYSQL_DATABASE=mailchat
ENV MYSQL_USER=admin
ENV MYSQL_PASSWORD=admin
ENV MYSQL_ROOT_PASSWORD=admin

EXPOSE 3306

CMD ["mysqld"]

