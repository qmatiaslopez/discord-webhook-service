FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["uvicorn", "app.input_handler:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]