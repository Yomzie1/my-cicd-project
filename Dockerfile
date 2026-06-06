FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN pip install pytest

RUN useradd -m appuser

USER appuser

CMD ["pytest"]
