### Аналіз функціональних та нефункціональних вимог

#### Таблиця 1.2 – результати аналізу вимог до програмного продукту

| **Вимоги (FR, NFR)**                            | **Загроза порушення конфіденційності** | **Загроза порушення цілісності**        | **Загроза порушення доступності**            |
|-------------------------------------------------|----------------------------------------|----------------------------------------|--------------------------------------------|
| FR1 – Збір метеорологічних даних                | -                                      | +                                      | +                                          |
| FR2 – Відображення даних на веб/Telegram-боті   | -                                      | +                                      | +                                          |
| FR3 – Прогнозування погодних умов               | -                                      | +                                      | +                                          |
| FR4 – Збереження даних у базі даних (SQLite)    | +                                      | +                                      | +                                          |
| FR5 – Передача даних між Arduino та сервером    | +                                      | +                                      | +                                          |
| NFR1 – Висока доступність сервісу               | -                                      | -                                      | +                                          |
| NFR2 – Захищена передача даних                  | +                                      | +                                      | -                                          |
| NFR3 – Відповідність вимогам конфіденційності   | +                                      | -                                      | -                                          |
| NFR4 – Продуктивність і час відповіді системи   | -                                      | -                                      | +                                          |
| NFR5 – Масштабованість системи                  | -                                      | -                                      | +                                          |
| NFR6 – Надійність метеостанції                  | -                                      | -                                      | +                                          |
| NFR7 – Захист від несанкціонованого доступу     | +                                      | +                                      | -                                          |
| NFR8 – Інтеграція з зовнішніми API              | -                                      | +                                      | +                                          |
| NFR9 – Сумісність з різними платформами         | -                                      | -                                      | +                                          |
| NFR10 – Моніторинг і підтримка системи          | -                                      | -                                      | +                                          |
