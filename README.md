## 🐢 Проект Backend для Сервиса Проведения Тендеров

Этот проект направлен на реализацию backend'a для сервиса проведения тендеров, написанный на языке Go с использованием библиотеки GORM для работы с базой данных.

### 🐢 Функции

На данный момент реализованы следующие функции:
- /ping: Тестовый маршрут для проверки работоспособности сервера.
- Соединение с базой данных. 

### 🐢 Сборка и Запуск

1. Сборка Docker-образа

   Для сборки Docker-образа выполните следующую команду в корневой директории проекта:

  
   ```docker build -t my-go-app .```
   
2. Запуск контейнера

   Для запуска Docker-контейнера выполните следующую команду:

   
   ```docker run -p 8080:8080 my-go-app```
   
3. Проверка

   После успешного запуска контейнера, сервер будет доступен по адресу http://localhost:8080/api.

### 🐢 TODO

Реализации функций:
* Получение списка тендеров
* Создание нового тендера
* Получить тендеры пользователя
* Получение текущего статуса тендера
* Изменение статуса тендера
* Редактирование тендера
* Откат версии тендера
* Создание нового предложения
* Получение списка ваших предложений
* Получение списка предложений для тендера
* Получение текущего статуса предложения
* Изменение статуса предложения
* Редактирование параметров предложения
* Отправка решения по предложению
* Отправка отзыва по предложению
* Откат версии предложения
* Просмотр отзывов на прошлые предложения

### Контактная информация

Для вопросов и предложений можете связаться со мной: tg@Aisen_harodonr
