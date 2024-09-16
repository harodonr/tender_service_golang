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

ENV DB_HOST=ep-morning-math-a10bikv1.ap-southeast-1.aws.neon.tech \
    DB_PORT=5432 \
    DB_USER=model_owner \
    DB_PASS=FiEDwAIG0s7h \
    DB_NAME=model

# Указываем точку входа
ENTRYPOINT ["/app/myapp"]

RUN echo "DB_HOST=rc1b-5xmqy6bq501kls4m.mdb.yandexcloud.net \
    DB_PORT=6432 \
    DB_USER=cnrprod1725760155-team-77285\
    DB_PASS=cnrprod1725760155-team-77285 \
    DB_NAME=cnrprod1725760155-team-77285" >> .env
# Указываем порт, который будет использоваться
EXPOSE 8080

