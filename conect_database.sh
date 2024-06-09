#!/bin/bash
HOST="localhost"
PORT="3306"
USER="root"
PASSWORD="1234"
DATABASE="mysql-example"

QUERY="select * from customers"

mysql -h "$HOST" -P "$PORT" -u "$USER" -p "$PASSWORD" -D"$DATABASE" -e "$QUERY"

