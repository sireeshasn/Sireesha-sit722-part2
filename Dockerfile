# Dockerfile for book_catalog microservice
FROM python:3.9-slim

WORKDIR /book_catalog

COPY book_catalog/requirements.txt /book_catalog/requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

COPY book_catalog /book_catalog

EXPOSE 8000

ENV DATABASE_URL="postgresql://sireesha:S680WVXtGRdF3UINFHLsLwuXu0oWHca9@dpg-cremmrqj1k6c73dedagg-a.oregon-postgres.render.com:5432/part2_hacc"

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]