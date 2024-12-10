# Перевірка надійності пароля за списком "10000 найгірших паролів"

2.2.1 В репозиторії [посилання](https://github.com/danielmiessler/SecLists/tree/master/Passwords) розміщено файли зі списку "10000 найгірших паролів", назви яких представлено в таблиці 1. Отримати файл, номер якого відповідає вашому варіанту.

![image](https://github.com/user-attachments/assets/7a073454-ecc0-4f20-8387-d4c32c343c40)


2.2.2 Створити таблицю в БД СКБД PostgreSQL, назва якої відповідає назві файлу, та завантажити вміст файлу у таблицю, використовуючи будь-який засіб імпорту, наприклад, команду \COPY утиліти psql.

![image](https://github.com/user-attachments/assets/c3b86197-69da-4dcf-8ad4-d1492f549fa0)


2.2.3 Створити функцію user_register на мові програмування PL/pgSQL, яка буде забороняти створювати пароль, якщо він є у таблиці гірших паролів.

![image](https://github.com/user-attachments/assets/db73d4e6-b0e9-422d-bfb6-c1f18f373a42)



2.2.4 Провести тестування роботи функції user_register за двома тестовими сценаріями (правильний та неправильний).

Правильний сценарій:

![image](https://github.com/user-attachments/assets/74ca0737-a812-4281-acb2-86dc6f783f78)


Неправильний сценарій:

![image](https://github.com/user-attachments/assets/68523b7b-21b5-49e4-9fea-aea99ba998b5)
