# Работа с JSON-сервером

Для начала надо установить node.js. Я использую 16 версию.

Инструкция по установке node.js и npm есть тут: https://nodejs.org/en/download/ или тут для линукса: https://github.com/nodesource/distributions

## Установка зависимостей

Мы будем использовать средний слой для авторизации в JSON-server. Документацией есть тут: https://www.npmjs.com/package/json-server-auth

```bash
$ npm install -D json-server json-server-auth
```

## Создание БД

Создайте файл db.json со следующим содержимым:

```json
{
  "users": []
}
```

## Постман-коллекция

Доступна по [ссылке](./postman_collection.json).
