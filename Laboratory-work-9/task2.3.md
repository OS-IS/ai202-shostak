# Перевірка надійності пароля за визначеними умовами

2.3.1 Припустимо, що з урахуванням рекомендацій посібника NIST 800-63 «Digital Identity Guidelines. Authentication and Lifecycle Management», розміщенного за [адресою](https://pages.nist.gov/800-63-3/sp800-63b.html), пропонуються наступні умови надійності паролю користувача:
- довжина рядка не менше 15 символів;
- не менше 2 символів – цифра;
- не менше 4 символів у нижньому регістрі;
- не менше 4 символів у верхньому регістрі;
- не менше 2 спеціальних символів з множини {!@#$%^&*}

Оновити програмний код створеної функції user_register з новою назвою – user_register_secure, додавши до нього реалізацію алгоритму перевірку надійності паролю.

```
create or replace function user_register_secure(check_password varchar)
returns boolean
as $$
declare
    special_chars constant text := '!@#$%^&*';
begin
    if length(check_password) < 15 then
        raise notice 'Password must be at least 15 characters long.';
        return false;
    elsif (select coalesce(sum(1), 0) from regexp_matches(check_password, '[a-z]', 'g')) < 3 then
        raise notice 'Password must contain at least 3 lowercase characters.';
        return false;
    elsif (select coalesce(sum(1), 0) from regexp_matches(check_password, '[a-z]', 'g')) < 4 then
        raise notice 'Password must contain at least 4 characters in uppercase.';
        return false;
    elsif (select coalesce(sum(1), 0) from regexp_matches(check_password, '[0-9]', 'g')) < 4 then
        raise notice 'Password must contain at least 4 digits.';
        return false;
    elsif (select coalesce(sum(1), 0) from regexp_matches(check_password, '['  special_chars  ']', 'g')) < 2 then
        raise notice 'Password must contain at least 2 special characters.';
        return false;
    elsif exists (select 1 from xato_net_10_million_passwords_1000 where password_value = check_password) then
        raise notice 'Password "%" is too week', check_password;
        return false;
    end if;

    raise notice 'password "%" satisfies the restrictions', check_password;
    return true;
end;
$$ LANGUAGE plpgsql;
```

2.3.2 Провести тестування роботи функції user_register за двома тестовими сценаріями (правильний та неправильний).

Правильний сценарій:

![image](https://github.com/user-attachments/assets/6f10aa8f-9cb2-40c7-8b3a-85a8ef0d9f7b)


Неправильний сценарій:

![image](https://github.com/user-attachments/assets/4a680186-372c-4204-9919-06d6f8fbfa4d)
