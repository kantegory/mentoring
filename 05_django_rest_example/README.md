# 05_django_rest_example

Пример реализации REST API с использованием Django и Django REST Framework (DRF) для работы со списком заметок (Note), а также простой фронтенд на чистом JavaScript и HTML.

## Структура проекта

- `example_project/` — Django-проект с приложением `example_app`:
  - `models.py` — модель заметки `Note` (заголовок, текст, дата создания);
  - `serializers.py` — сериализатор `NoteSerializer`;
  - `views.py` — API-представления на базе generic-классов DRF (`ListAPIView`, `CreateAPIView`, `RetrieveUpdateDestroyAPIView`);
- `index.html` — клиентский интерфейс для создания и просмотра заметок через Fetch API;
- `registration.html` — форма регистрации пользователей через API.
