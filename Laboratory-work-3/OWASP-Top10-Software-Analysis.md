# OWASP Top 10 2021: Detailed Software Vulnerabilities Analysis for Weather Station

| **Ідентифікатор та назва атаки (вразливості)**         | **Вимога (FR, NFR)**                     | **Загроза порушення**                                   | **Приклад запобігання успішної реалізації атаки**                |
|--------------------------------------------------------|------------------------------------------|---------------------------------------------------------|------------------------------------------------------------------|
| **A1 - Недоліки контролю доступу**                     | NFR7 – Захист від несанкціонованого доступу | Порушення конфіденційності                              | Впровадження чіткої моделі доступу на основі ролей               |
| **A2 - Невдачі у криптографії**                        | NFR2 – Захищена передача даних             | Порушення конфіденційності та цілісності                | Використання надійного TLS шифрування для всіх передач даних     |
| **A3 - Впровадження (Injection)**                      | NFR7 – Захист від несанкціонованого доступу | Порушення цілісності даних                              | Валідація та очищення всіх користувацьких введень                |
| **A4 - Небезпечний дизайн**                            | FR4 – Збереження даних у базі даних         | Порушення цілісності                                     | Забезпечити безпеку під час розробки з використанням стандартів  |
| **A5 - Неправильна конфігурація безпеки**              | NFR10 – Моніторинг і підтримка системи     | Порушення доступності                                   | Регулярне налаштування та оновлення конфігурацій системи         |
| **A6 - Вразливі та застарілі компоненти**              | NFR10 – Моніторинг і підтримка системи     | Порушення доступності                                   | Регулярне оновлення компонентів і перевірка їх безпеки           |
| **A7 - Помилки ідентифікації та автентифікації**       | NFR7 – Захист від несанкціонованого доступу | Порушення конфіденційності                              | Використання багатофакторної автентифікації (MFA)                |
| **A8 - Невдачі у забезпеченні цілісності ПЗ**          | NFR2 – Захищена передача даних             | Порушення цілісності                                     | Впровадження механізмів перевірки цілісності на всіх етапах      |
| **A9 - Невдачі реєстрації та моніторингу безпеки**     | NFR10 – Моніторинг і підтримка системи     | Порушення доступності                                   | Впровадження реєстрації та постійного моніторингу усіх подій     |
| **A10 - Підробка запитів на стороні сервера (SSRF)**   | FR5 – Передача даних між Arduino та сервером | Порушення цілісності                                     | Перевірка автентичності всіх вхідних запитів                     |