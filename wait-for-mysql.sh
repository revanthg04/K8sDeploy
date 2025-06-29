#!/bin/bash

echo "Waiting for MySQL to be ready..."

until mysqladmin ping -h "mysql-container" --silent; do
    sleep 2
done

echo "MySQL is up - Starting Flask App"
exec python main.py