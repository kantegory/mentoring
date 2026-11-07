# Демо-материалы для лекций

Коллекция учебных проектов и демонстрационных материалов по фронтенд- и бэкенд-разработке. Репозиторий охватывает темы от базового JavaScript и вёрстки до построения микросервисной архитектуры, документирования API и разработки на современных фреймворках (Vue 3, Express, TypeScript, Django).

---

## 📚 Каталог примеров

| № | Пример | Описание | Стек технологий | Статус |
| :-: | :--- | :--- | :--- | :--- |
| **01** | [01_views_examples](./01_views_examples) | Реализация CRUD-операций на Django с использованием встроенных generic views (`ListView`, `DetailView`, `CreateView`, `UpdateView`, `DeleteView`). | Python, Django, SQLite | Актуализируется |
| **02** | [02_js_examples](./02_js_examples) | Базовые синтаксические конструкции JavaScript: функции, циклы, классы ES6, условные операторы. | JavaScript, HTML | Актуален |
| **03** | [03_vue_examples](./03_vue_examples) | SPA-приложение со списком карточек и интеграцией с NASA API. | Vue 2, Vuetify 2, Webpack | ⚠️ Устаревший |
| **04** | [04_vue_auth_example](./04_vue_auth_example) | Клиентская аутентификация и регистрация пользователей с формами входа/регистрации. | Vue 2, Vuetify 2, Vue Router | ⚠️ Устаревший |
| **05** | [05_django_rest_example](./05_django_rest_example) | REST API для сервиса заметок на Django REST Framework с клиентским JS-интерфейсом. | Python, Django, DRF, JS | Актуализируется |
| **06** | [06_bootstrap_example](./06_bootstrap_example) | Примеры типовой вёрстки страниц и компонентов интерфейса Bootstrap 5 (CDN). | Bootstrap 5, HTML, CSS | Актуален |
| **07** | [07_json_server_example](./07_json_server_example) | Быстрое развёртывание мок-сервера REST API на базе JSON-файла. | Node.js, json-server | В обновлении |
| **08** | [08_themization_example](./08_themization_example) | Реализация динамического переключения тем оформления (light, dark, blue, pink). | JavaScript, CSS, HTML | Актуален |
| **09** | [09_svg_sprite_example](./09_svg_sprite_example) | Использование SVG-спрайтов (`<use href="...">`) и иконок совместно с Bootstrap 5. | SVG, Bootstrap 5, HTML | Актуален |
| **10** | [10_tag_picture_example](./10_tag_picture_example) | Адаптивные изображения с тегом `<picture>` и форматами нового поколения (AVIF, WebP, JPG). | HTML5, AVIF, WebP | Актуален |
| **11** | [11_bootstrap_vue](./11_bootstrap_vue) | Использование библиотеки компонентов BootstrapVue в проекте на Vue 2. | Vue 2, BootstrapVue, Bootstrap 4 | ⚠️ Устаревший |
| **12** | [12_vue_mixins](./12_vue_mixins) | Переиспользование логики компонентов через миксины (Mixins) во Vue 2. | Vue 2, Vue CLI | ⚠️ Устаревший |
| **14** | [14_express_example](./14_express_example) | Серверное REST API на Express с базой данных SQLite и ORM Sequelize (миграции, модели). | Node.js, Express, Sequelize, SQLite | В обновлении |
| **15** | [15_express_typescript_example](./15_express_typescript_example) | Архитектурный каркас бэкенда на Express и TypeScript (routes, controllers, core). | Node.js, Express, TypeScript | В обновлении |
| **16** | [16_express_swagger_example](./16_express_swagger_example) | Документирование REST API через JSDoc-аннотации (`swagger-jsdoc`) и Swagger UI. | Express, TypeScript, Swagger UI | В обновлении |
| **17** | [17_adaptive_example](./17_adaptive_example) | Приемы адаптивной верстки на Bootstrap 5: сетка (Grid), flex-утилиты, брейкпоинты. | Bootstrap 5, HTML, CSS | Актуален |
| **18** | [18_bootstrap_api_example](./18_bootstrap_api_example) | Клиентское приложение с авторизацией, взаимодействующее с REST API на базе `json-server-auth`. | Bootstrap 5, JS, json-server-auth | Сохранён |
| **19** | [19_frontend_router](./19_frontend_router) | Клиентский SPA-роутинг на чистом JavaScript (через `hash` и через `History API`). | JavaScript, HTML | Актуален |
| **20** | [20_vue3_example](./20_vue3_example) | Полноценный SPA на Vue 3, Vite, Pinia (c персистентностью), Vue Router и Bootstrap 5. | Vue 3, Vite, Pinia, Bootstrap 5 | В обновлении |
| **21** | [21_vue3_plugins_example](./21_vue3_plugins_example) | Подключение сторонних библиотек во Vue 3 на примере календаря событий FullCalendar. | Vue 3, Vite, FullCalendar | В обновлении |
| **22** | [22_express_generator_example](./22_express_generator_example) | Шаблоны генерации структуры Express-приложений с помощью `express-generator`. | Node.js, Express, Twig | В обновлении |
| **23** | [23_express_cookies_example](./23_express_cookies_example) | Работа с HTTP-куками на сервере Express через middleware `cookie-parser` (в т.ч. signed cookies). | Node.js, Express, cookie-parser | В обновлении |
| **24** | [24_postman_example](./24_postman_example) | Коллекция запросов Postman: структурирование папок, переменные и автотесты для REST API. | Postman Collection v2.1 | Актуален |
| **25** | [25_node_ws_example](./25_node_ws_example) | Обмен сообщениями в реальном времени по WebSocket (библиотека `ws`) с браузерным клиентом. | Node.js, WebSocket (`ws`), HTML/JS | Актуален |
| **26** | [26_express_rabbitmq](./26_express_rabbitmq) | Асинхронное взаимодействие микросервисов (корзина, склад, платежи) через RabbitMQ. | Node.js, Express, TypeScript, RabbitMQ | Актуален |
| **27** | [27_simple_spa_example](./27_simple_spa_example) | Пример реализации простого SPA на чистом JS и Bootstrap 5 с динамической сменяемостью представлений. | JavaScript, Bootstrap 5 | Актуален |
| **28** | [28_express_endpoints](./28_express_endpoints) | Способы реализации типизированных REST-эндпоинтов на Express и TypeScript с рантаймом `tsx`. | Node.js, Express, TypeScript, tsx | Актуален |
| **29** | [29_express_swagger_routing_controllers_example](./29_express_swagger_routing_controllers_example) | Декларативный REST API с декораторами `routing-controllers`, DTO-валидацией и OpenAPI. | Express, TypeScript, routing-controllers | Актуален |
| **30** | [30_express_swagger_tsoa_example](./30_express_swagger_tsoa_example) | Типобезопасный REST API с фреймворком `tsoa`, JWT-авторизацией и генерацией Swagger UI. | Express, TypeScript, tsoa, JWT | Актуален |
| **31** | [31_api_design_examle](./31_api_design_examle) | Проектирование REST API на языке TypeSpec с компиляцией в OpenAPI 3 и отображением в Swagger/Redoc. | TypeSpec, Express 5, Docker | Актуален |
| **32** | [32_bootstrap_notes_app_example](./32_bootstrap_notes_app_example) | Вёрстка адаптивного интерфейса веб-приложения заметок на Bootstrap 5. | Bootstrap 5, HTML, CSS | Актуален |
| **33** | [33_vue_notes_example](./33_vue_notes_example) | Клиентское приложение заметок на стеке Vue 3.5, Vite 8, Pinia 3, Vue Router 5 и Bootstrap 5.3. | Vue 3.5, Vite 8, Pinia 3, Oxlint | Актуален |
