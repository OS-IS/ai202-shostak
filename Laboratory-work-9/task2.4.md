# Імітація Token-механізму автентифікації в СУБД PostgreSQL

2.4.1 Підготувати структури даних для імітації Token-механізму автентифікації в СКБД PostgreSQL.

```
CREATE TABLE tokens (
    token VARCHAR PRIMARY KEY,
    user_name VARCHAR NOT NULL,
    client_ip INET NOT NULL,
    client_port INTEGER NOT NULL,
    backend_pid INTEGER NOT NULL
);
```

2.4.2 Створити функцію user_login, яка буде ініціалізувати Token, враховуючи параметри сесії користувача ( IP-адреса клієнта, порт клієнта та ідентифікатор серверного процесу).

```
CREATE OR REPLACE FUNCTION user_login(user_name VARCHAR, client_ip INET, client_port INTEGER, backend_pid INTEGER)
RETURNS VARCHAR AS $$
DECLARE
    token VARCHAR;
BEGIN
    token := md5(random()::text || clock_timestamp()::text || user_name);
    
    INSERT INTO tokens (token, user_name, client_ip, client_port, backend_pid)
    VALUES (token, user_name, client_ip, client_port, backend_pid);
    
    RETURN token;
END;
$$ LANGUAGE plpgsql;
```

2.4.3 Провести тестування роботи функції user_login.

картинка

картинка

2.4.4 З урахуванням Token-механізму автентифікації оновити функцію get_data отримання вмісту таблиці, яку було створено в першому завданні лабораторній роботі No7.

```
CREATE OR REPLACE FUNCTION get_data_safe(attribute_value VARCHAR, user_token VARCHAR)
RETURNS TABLE(a_id INTEGER, name VARCHAR, year INTEGER, confidentiality_label INTEGER) AS $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM tokens WHERE token = user_token
    ) THEN
        RAISE EXCEPTION 'Invalid or expired token';
    END IF;

    RETURN QUERY EXECUTE format('SELECT * FROM human WHERE name = %L', attribute_value);
END;
$$ LANGUAGE plpgsql;
```

2.4.5 Провести тестування роботи оновленої функції get_data.

картинка

2.4.6 Створити функцію user_logout для коректного очищення Token.

```
CREATE OR REPLACE FUNCTION user_logout(user_token VARCHAR)
RETURNS VOID AS $$
BEGIN
    DELETE FROM tokens WHERE token = user_token;
END;
$$ LANGUAGE plpgsql;
```

2.4.7 Провести тестування роботи user_logout.

картинка