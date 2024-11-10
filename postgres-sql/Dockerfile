# Используем официальный образ PostgreSQL
FROM postgres:latest

# Устанавливаем переменные окружения для суперпользователя PostgreSQL
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres

# Копируем наш скрипт инициализации в специальную директорию
COPY init.sql /docker-entrypoint-initdb.d/

# Открываем порт 5432 для доступа к PostgreSQL
EXPOSE 5432
