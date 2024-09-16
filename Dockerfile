# Используем официальный Go образ для сборки
FROM golang:1.22 AS build

# Указываем рабочий каталог внутри контейнера
WORKDIR /app

# Копируем исходный код в рабочий каталог
COPY . .

# Скачаем все зависимости и создадим исполняемый файл
RUN go mod init github.com/harodonr/tender_service_golang && \
    go mod tidy && \
    go build -o myapp

# Используем минимальный образ для выполнения приложения
FROM ubuntu:22.04

# Копируем исполняемый файл из предыдущего контейнера
COPY --from=build /app/myapp /app/myapp

# Указываем точку входа
ENTRYPOINT ["/app/myapp"]
     
# Указываем порт, который будет использоваться
EXPOSE 8080

