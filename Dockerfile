FROM python:3.6-slim
RUN apt-get update && \
    apt-get install -y --no-install-recommends libc-dev

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
CMD [ "python", "app.py" ]
