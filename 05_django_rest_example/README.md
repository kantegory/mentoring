# 05_django_rest_example

Пример реализации REST API с использованием Django и Django REST Framework (DRF) для работы со списком заметок (Note), а также простой фронтенд на чистом JavaScript и HTML.

## Структура проекта

- `requirements.txt` — зависимости проекта (Django 5.x, DRF, django-cors-headers, djoser);
- `example_project/` — Django-проект с приложением `example_app`:
  - `models.py` — модель заметки `Note` (привязка к пользователю, заголовок, текст, дата);
  - `serializers.py` — сериализатор `NoteSerializer`;
  - `views.py` — API-представление `CreateNoteView` на базе generic-классов DRF;
- `index.html` — клиентский интерфейс для создания и просмотра заметок через Fetch API;
- `registration.html` — форма регистрации пользователей через Djoser API (`/auth/users/`).

## Установка и запуск бэкенда

### 1. Создать окружение и установить зависимости

```bash
cd 05_django_rest_example
make # или: python3 -m venv venv && ./venv/bin/pip install -r requirements.txt
```

### 2. Применить миграции

```bash
make migrate # или: ./venv/bin/python example_project/manage.py migrate
```

### 3. Запустить сервер API

```bash
make run # или: ./venv/bin/python example_project/manage.py runserver
```

Сервер будет доступен по адресу `http://127.0.0.1:8000/`.

## Запуск клиентской части

Откройте `registration.html` для регистрации пользователя, а затем `index.html` для создания заметок в браузере.
