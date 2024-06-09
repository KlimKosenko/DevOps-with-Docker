# GSES3
Genesis &amp; KMA Software Engineering School 3.0<br/>
Для побудови АПІ було використано мікро фреймворк PHP Slim<br/>
Інструкція налаштування проекту:
* Для завантаження проекту потрібно ввести команду в терміналі: `git clone https://github.com/KlimKosenko/GSES3.git`.
* Після завантаження, перейдіть в папку проекту та введіть команду в терміналі: `docker-compose up -d --build`.
<br/>Використання АПІ:
* Get запит до ендпоінту `http://localhost:8000/rate` поверне курс біткоіна у форматі Json з код статусом 200.
* Post запит з емейлом у форматі formData до ендпоінту `http://localhost:8000/subscribe` запише емейл в базу даних(текстовий файл), якщо цей емейл ще не доданий.
* Post запит до ендпоінту `http://localhost:8000/sendEmails` відправляє поточний курс біткоіна до гривні на всі емейли з бази даних.