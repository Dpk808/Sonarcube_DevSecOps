FROM python:3.9-slim

WORKDIR /app
COPY app.py .

RUN pip install flask

# Folder for uploads (will be replaced by PVC in Kubernetes)
RUN mkdir /uploads

VOLUME ["/uploads"]

CMD ["python", "app.py"]
