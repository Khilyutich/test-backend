# First_try_docker

Минимальное Django-приложение с настройкой Docker и PostgreSQL.

## Запуск проекта

1. **Клонируйте репозиторий** и перейдите в папку проекта:
   ```bash
   git clone <URL_репозитория>
   cd First_try_docker
   ```

2. **Настройте переменные окружения**:
   - Создайте файл `.env` на основе `.env-example`
   - Заполните переменные (см. раздел ниже)

3. **Запустите контейнеры**:
   ```bash
   docker-compose up --build
   ```

## Доступ к проекту

- Основное приложение: [http://localhost:8000](http://localhost:8000)
- Админ-панель Django: [http://localhost:8000/admin](http://localhost:8000/admin)  
  (используйте созданного суперпользователя)

## Переменные окружения

В файле `.env` необходимо указать:

| Переменная           | Описание                     | Пример значения |
|----------------------|------------------------------|-----------------|
| DJANGO_SECRET_KEY    | Секретный ключ Django        | your_secret_key |
| POSTGRES_DB          | Имя базы данных              | mydatabase      |
| POSTGRES_USER        | Пользователь БД              | myuser          |
| POSTGRES_PASSWORD    | Пароль пользователя          | mypassword      |
| POSTGRES_HOST        | Хост БД (обычно `db`)        | db              |
| POSTGRES_PORT        | Порт БД (обычно `5432`)      | 5432            |

## Заметки

- Проект подготовлен для работы через WSL на Windows
- Все зависимости указаны в `requirements.txt`
- Для управления проектом используется Docker и Docker Compose

**Автор**: Albina Khilyutich  
**Дата**: 2025
```