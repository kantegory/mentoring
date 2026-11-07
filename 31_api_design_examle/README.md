# 31_api_design_examle: Репозиторий для общей документации по REST API

Пример проектирования REST API с использованием современного языка моделирования [TypeSpec](https://typespec.io/) (`@typespec/compiler`), генерации OpenAPI 3.0 и публикации интерактивной документации через Swagger UI и Redoc.

## Установка TypeSpec CLI

```bash
npm install -g @typespec/compiler
```

## Сборка схемы

```bash
npm run build
```

## Запуск сервера документации

```bash
npm install
npm start
```

Документация также упакована в Docker (`docker-compose.yml`).
