# Используем базовый образ Alpine Linux
FROM alpine:latest

# Обновляем индекс пакетов и устанавливаем nginx
RUN apk update && \
    apk add --no-cache nginx

# Копируем наш конфигурационный файл nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Копируем статический контент в директорию nginx
COPY html /usr/share/nginx/html

# Создаем папку для PID файла nginx
RUN mkdir -p /run/nginx

# Открываем порт 80 для доступа к nginx
EXPOSE 80

# Запускаем nginx в преднастройленном режиме (не в фоне)
CMD ["nginx", "-g", "daemon off;"]
