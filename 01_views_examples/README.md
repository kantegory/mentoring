# 01_views_examples: Примеры работы с представлениями Django

Здесь собраны примеры реализации CRUD-методов с использованием стандартных Django generic Views (`ListView`, `DetailView`, `CreateView`, `UpdateView`, `DeleteView`).

## Инструкция по развёртыванию

### 1. Создать виртуальное окружение и установить зависимости

```bash
cd 01_views_examples
make # или: python3 -m venv venv && ./venv/bin/pip install -r requirements.txt
```

### 2. Активировать окружение

```bash
source venv/bin/activate
```

### 3. Перейти в папку проекта и применить миграции

```bash
cd example_project
python manage.py migrate
```

### 4. Запустить проект

```bash
python manage.py runserver
# или: make run
```

Проект доступен по адресу: http://127.0.0.1:8000/

---

**Полезные команды из Makefile проекта (`example_project/Makefile`):**

- `make admin` — запуск `python manage.py createsuperuser`
- `APP=appname make app` — создание нового приложения `python manage.py startapp appname`
- `make migrate` — создание и применение миграций
