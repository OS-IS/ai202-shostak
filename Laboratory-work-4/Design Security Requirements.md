# Вимоги безпеки

## Огляд практики безпеки

Практика **"Вимоги безпеки" (Security Requirements, SR)** зосереджена на безпекових вимогах, які є важливими в контексті створення безпечного програмного забезпечення. Існує два основних типи вимог: перший стосується програмних вимог, що забезпечують цілі та очікування для захисту сервісів та даних додатка, другий охоплює вимоги до постачальників, які працюють над розробкою додатка, особливо при аутсорсингу. Важливо узгодити очікування з погляду безпечної розробки, адже залучення сторонніх організацій може значно вплинути на безпеку додатка. Вимоги щодо захисту сторонніх бібліотек входять у потік ланцюгів поставок програмного забезпечення (див. **"Захищене створення"**) і не включені до цієї практики.

## Огляд потоків

### Потік A - Програмні вимоги

Програмні вимоги визначають цілі та очікування для захисту сервісів та даних, які є основою додатка.

### Потік B - Безпека постачальників

Безпека постачальників охоплює вимоги, що стосуються організацій-постачальників у контексті розробки додатка, особливо при аутсорсингу.

---

## Огляд активностей

| Потік | Рівень зрілості | Активності |
|-------|-----------------|------------|
| Потік A - Програмні вимоги | Рівень 1 | Явно враховувати безпеку під час процесу визначення вимог до програмного забезпечення. Загальні цілі безпеки мають бути пов'язані з функціональними вимогами. |
|                         | Рівень 2 | Підвищення деталізації вимог безпеки, що походять із бізнес-логіки та відомих ризиків. Наявність структурованих вимог безпеки, якими можуть користуватися команди розробників. |
|                         | Рівень 3 | Обов’язковий процес визначення вимог безпеки для всіх проєктів програмного забезпечення та сторонніх залежностей. Використання структури вимог для підтримки продуктових команд. |
| Потік B - Безпека постачальників | Рівень 1 | Оцінка постачальника на основі організаційних вимог безпеки. |
|                         | Рівень 2 | Інтеграція безпеки в угоди з постачальниками для забезпечення відповідності організаційним вимогам. |
|                         | Рівень 3 | Забезпечення належного рівня покриття безпеки для зовнішніх постачальників шляхом надання чітких цілей. |

---

## Потік A - Програмні вимоги

### Рівень зрілості 1

#### Перевага

Розуміння основних вимог безпеки під час розробки.

#### Активність

Провести огляд функціональних вимог проекту програмного забезпечення. Визначити відповідні вимоги безпеки для функціональності на основі конфіденційності, цілісності чи доступності сервісів або даних, що надаються проектом. Вимоги мають вказувати мету (наприклад, "особисті дані для реєстраційного процесу мають передаватися та зберігатися безпечно"), але не конкретний метод для її досягнення (наприклад, "використовувати TLSv1.2 для безпечної передачі").

#### Продовження активності

Цілі безпеки можуть стосуватися специфічної функціональності безпеки, яку слід додати до додатка (наприклад, "Ідентифікувати користувача додатка в будь-який час") або загальної якості та поведінки додатка. Дотримуйтеся найкращих практик під час написання вимог безпеки: робіть їх конкретними, вимірюваними, дієвими, відповідними та обмеженими за часом.

> Примітка: Уникайте надмірно загальних вимог, що не стосуються конкретного додатка.

---

### Рівень зрілості 2

#### Перевага

Вирівнювання вимог безпеки з іншими типами вимог та джерелами даних.

#### Активність

Вимоги безпеки можуть походити з інших джерел, таких як внутрішні політики, законодавчі вимоги, а також метрики та зворотний зв'язок з системами. На цьому рівні слід забезпечити систематичний процес виявлення вимог, використовуючи різноманітні джерела інформації.

Організовуйте інтерв’ю або мозкові штурми для обговорення політик та нормативних вимог, аналізуйте звіти про вразливості систем і журнали для формування вимог. Використовуйте структуровану нотацію для вимог безпеки у всіх додатках, щоб вони добре інтегрувалися з іншими функціональними вимогами, наприклад, у вигляді технічної документації або користувацьких історій.

---

### Рівень зрілості 3

#### Перевага

Ефективне управління вимогами безпеки у вашій організації.

#### Активність

Створіть фреймворк для визначення вимог безпеки, який допоможе проектам вибрати необхідний набір вимог для їхніх потреб. Цей фреймворк має враховувати різні джерела та типи вимог, бути сумісним з методологіями організації та забезпечувати ефективний методологічний підхід для команд розробників.

Фреймворк також повинен надавати чіткі інструкції щодо якості вимог та формалізувати їх опис. Наприклад, для користувацьких історій визначаються критерії прийняття та інші технічні деталі, що мають бути включені в опис вимоги.

---

## Потік B - Безпека постачальників

### Рівень зрілості 1

#### Перевага

Прозорість щодо безпекових практик постачальників.

#### Активність

Оцінюйте компетенції та звички постачальників, які займаються розробкою вашого програмного забезпечення, оскільки це може значно вплинути на безпеку кінцевого продукту. Виконуйте оцінку постачальника, щоб зрозуміти їхні сильні та слабкі сторони в питаннях безпеки. Використовуйте базовий контрольний список або проводьте інтерв'ю з ключовими ролями в організації постачальника.

---

### Рівень зрілості 2

#### Перевага

Забезпечення відповідності безпеки в усіх угодах з постачальниками.

#### Активність

Інтегруйте вимоги безпеки у всі договори з постачальниками, щоб забезпечити відповідність організаційним стандартам. Рекомендується встановити чіткі стандарти, які визначатимуть обов’язки постачальників у галузі безпеки, а також передбачати штрафні санкції у разі невідповідності вимогам. Це включає визначення показників успішності постачальника та забезпечення зворотного зв'язку з ними.

---

### Рівень зрілості 3

#### Перевага

Систематичний підхід до забезпечення безпеки з боку постачальників.

#### Активність

Запровадьте процес моніторингу та оцінки постачальників для забезпечення безпеки впродовж всього життєвого циклу контракту. Для цього створіть спеціальні метрики та контрольні точки для регулярної перевірки безпекових показників постачальників. Використовуйте чіткі показники, такі як оцінка відповідності безпеки або періодичні аудити, щоб підтримувати постачальників у відповідності до організаційних вимог.

Регулярно переглядайте угоди з постачальниками, щоб ураховувати зміни в політиці безпеки організації та підтримувати високу якість обслуговування. Також рекомендується проводити періодичні тренінги для співробітників постачальника, щоб оновлювати знання з актуальних безпекових практик.

---

## Потік A - Приклади реалізації вимог до програмного забезпечення

У цьому розділі розглянемо приклади вимог до безпеки, які можуть бути застосовані до проектів програмного забезпечення на різних рівнях зрілості. Наприклад, для захисту даних користувача у додатку можна використовувати стандартні вимоги до шифрування та збереження цілісності даних.

- **Захист даних**: Вимоги до шифрування, які забезпечують конфіденційність і цілісність при передачі даних між клієнтом та сервером.
- **Аутентифікація користувачів**: Використання багатофакторної автентифікації для додатків з підвищеними вимогами до безпеки.
- **Контроль доступу**: Впровадження ролей і прав доступу для обмеження дій користувачів у додатку.

Ці вимоги адаптуються до конкретних потреб проекту та можуть бути застосовані на рівнях від 1 до 3 залежно від специфіки та ризиків.

---

## Потік B - Приклади реалізації безпеки постачальників

Забезпечення безпеки з боку постачальників є ключовим аспектом для захисту організаційних ресурсів. У рамках цього потоку варто розглянути такі заходи:

- **Оцінка безпеки постачальника**: Періодичні перевірки на відповідність безпековим стандартам.
- **Зобов'язання з безпеки**: Закріплення вимог безпеки в контрактах, включаючи SLA (Угоду про рівень обслуговування).
- **Аудити та огляди**: Проведення незалежних аудитів постачальників для забезпечення відповідності організаційним політикам безпеки.

Такі заходи можуть бути поступово інтегровані на різних рівнях зрілості, щоб забезпечити максимальний рівень безпеки у взаємодії з постачальниками.

---

## Потік A - Рекомендації з управління безпекою

Управління безпекою вимагає системного підходу, який включає аналіз ризиків, моніторинг загроз і контроль безпеки на всіх етапах життєвого циклу розробки. Важливо застосовувати різні методи управління, що допомагають зменшити вплив можливих атак і забезпечити стабільність додатка. До таких методів можна віднести:

- **Ідентифікація загроз**: Регулярний аналіз загроз та виявлення нових вразливостей.
- **Моніторинг та реєстрація подій**: Ведення журналів, що містять інформацію про доступ, помилки та підозрілу активність.
- **Аналіз ризиків**: Визначення ризиків на основі ймовірності та потенційного впливу інцидентів.

Застосовуючи ці практики, організація отримує краще розуміння своїх слабких місць і може відповідно коригувати заходи безпеки.

---

## Потік B - Інструменти для оцінки та підтримки безпеки постачальників

Для забезпечення безпеки у взаємодії з постачальниками організації можуть використовувати різноманітні інструменти оцінки та підтримки, такі як:

- **Чек-листи відповідності**: Контрольні списки для перевірки виконання вимог до безпеки з боку постачальників.
- **Інструменти для моніторингу безпеки**: Системи, що відстежують події, пов’язані з безпекою, у постачальників і забезпечують прозорість процесів.
- **Інтеграція з SIEM**: Інструменти SIEM (Security Information and Event Management), які дозволяють відстежувати всі взаємодії з постачальниками для швидкого виявлення аномальної активності.

Ці інструменти можуть допомогти організації забезпечити, що постачальники дотримуються високих стандартів безпеки протягом всієї співпраці.

---

## Потік A - Приклади політик безпеки

### Політика шифрування даних

Захист даних є важливим компонентом для збереження конфіденційності та цілісності інформації. Політика шифрування має передбачати:

- **Стандарти шифрування**: Використання сильних алгоритмів шифрування, таких як AES-256 для збереження даних та TLS 1.2/1.3 для їх передачі.
- **Управління ключами**: Забезпечення захисту ключів шифрування та використання надійних методів їх зберігання.
- **Моніторинг та оновлення**: Регулярна перевірка та оновлення стандартів шифрування відповідно до актуальних вимог і рекомендацій.

Такі політики шифрування можуть бути впроваджені на всіх рівнях зрілості для підвищення захищеності системи.

---

## Потік B - Політики безпеки для взаємодії з постачальниками

### Політика вибору та оцінки постачальників

Організація має встановити політику, що допомагає визначити і оцінити постачальників відповідно до їхніх безпекових практик. Політика включає:

- **Процес перевірки**: Критерії для вибору постачальників, включаючи аналіз репутації, перевірку сертифікацій та огляди щодо відповідності стандартам безпеки.
- **Оцінка ризиків**: Проведення оцінки ризиків, пов'язаних із постачальником, на основі типу послуг або продуктів, які вони надають.
- **Контрольні точки**: Встановлення періодичних перевірок для моніторингу постачальника та впевненості у відповідності вимогам безпеки.

Такі політики є важливими для побудови надійної співпраці з постачальниками та підтримки високого рівня безпеки.

---

## Потік A - Рекомендації щодо підвищення рівня зрілості

Організації можуть покращувати свій рівень зрілості в управлінні вимогами безпеки за допомогою наступних підходів:

1. **Створення централізованих фреймворків** для вимог безпеки, які легко інтегруються з існуючими процесами та охоплюють різні види ризиків.
2. **Забезпечення регулярного моніторингу** змін у вимогах безпеки, враховуючи нові загрози та вразливості.
3. **Розробка навчальних програм** для співробітників, що дозволяє покращити обізнаність щодо актуальних ризиків і вимог безпеки.

Інтеграція цих підходів у діяльність організації сприятиме покращенню зрілості безпеки впродовж усього життєвого циклу додатків.

---

## Потік B - Контроль відповідності безпековим вимогам

Регулярні перевірки відповідності та аудити є невід'ємною частиною управління безпекою постачальників. Організація може використовувати такі методи:

- **Аудити безпеки**: Залучення незалежних аудиторів для оцінки відповідності постачальників встановленим вимогам безпеки.
- **Звіти відповідності**: Вимога від постачальників надавати регулярні звіти про їхню діяльність у сфері безпеки.
- **Моніторинг ключових показників**: Відстеження ключових показників ефективності безпеки постачальників, таких як час на усунення вразливостей.

Ці практики забезпечують прозорість процесів безпеки постачальників і підвищують загальний рівень безпеки організації.

---

## Заключення

Впровадження всебічного управління вимогами безпеки для програмного забезпечення та забезпечення безпеки постачальників є ключовими факторами для мінімізації ризиків і забезпечення стабільної роботи систем. Використання структурованих підходів та регулярних перевірок дозволить організаціям ефективно реагувати на змінні загрози та підтримувати високий рівень безпеки в усіх аспектах своєї діяльності.

