FROM python:3.11-slim

WORKDIR /app

# Сначала только requirements.txt — слой с зависимостями кэшируется
# и не пересобирается при изменении кода приложения
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

EXPOSE 8000
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
