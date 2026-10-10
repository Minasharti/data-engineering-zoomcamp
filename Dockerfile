FROM python:3.13.11-slim

WORKDIR /code

COPY requirements.txt .
COPY wheels-linux ./wheels-linux

RUN python -m pip install --no-index --find-links=./wheels-linux -r requirements.txt

COPY ingest_data.py .

ENTRYPOINT ["python", "ingest_data.py"]

