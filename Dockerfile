FROM python:3.9-slim

WORKDIR /app

COPY app.py .

RUN pip install --no-cache-dir flask==2.2.5 && \
    mkdir /uploads

VOLUME ["/uploads"]

CMD ["python", "app.py"]
