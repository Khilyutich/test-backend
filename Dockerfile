#Dockerfile
FROM python:3.11-slim

#Устанавливаем рабочую директорию
WORKDIR /app

# копируем зависимости
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# копируем весь проект
COPY . .

# команда по умолчанию
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]