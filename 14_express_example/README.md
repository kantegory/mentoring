# 14_express_example

Пример реализации серверного REST API на Express с подключением реляционной базы данных SQLite через ORM Sequelize.

## Содержимое

- `config/config.json` — конфигурация подключения к базе данных;
- `models/user.js`, `models/index.js` — описание моделей данных Sequelize;
- `migrations/` — миграции структуры БД;
- `createUser.js` — пример скрипта создания записей в БД;
- `index.js` — запуск Express-сервера и маршруты.

## Установка и запуск

```bash
npm install
node index.js
```
