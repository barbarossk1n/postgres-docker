-- Создание пользователя 'test' с паролем 'test'
CREATE USER owner WITH PASSWORD 'qwerty';

-- Создание базы данных 'test' и назначение владельца 'owner'
CREATE DATABASE test OWNER owner;

-- * Предоставление всех привилегий пользователю 'owner' на базу данных 'test' - ради эксперимента
GRANT ALL PRIVILEGES ON DATABASE test TO owner;
