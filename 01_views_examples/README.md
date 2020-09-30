# Примеры работы с представлениями Django

Здесь собраны примеры реализации CRUD-методов с использованием Django generic Views.

## Инструкция по развёртыванию

Чтобы развернуть проект у себя необходимо:

Склонировать репозиторий:

```bash
$ git clone git@github.com:kantegory/mentoring.git
```

Перейти в директорию `01_views_examples`:

```bash
$ cd 01_views_examples
```

Инициализировать зависимости:

```bash
$ make
```

Активировать вирутальное окружение:

```bash
$ pipenv shell
```

Перейти в папку проекта:

```bash
$ cd example_project
```

Сделать миграции:

```bash
$ make migrate
```

Запустить проект:

```bash
$ make
```

Теперь проект доступен по адресу http://127.0.0.1:8000/.

---

**ВАЖНО!** В Makefile уже есть некоторые дополнительные (кроме migrate и run) команды для упрощения работы с manage.py, вот их список:

```bash
$ make admin
```

Вызывает `python manage.py createsuperuser`.

```bash
$ APP=appname make app
```

Вызывает `python manage.py startapp appname`.


