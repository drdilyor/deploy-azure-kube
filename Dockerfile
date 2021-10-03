FROM python:3.9-alpine

WORKDIR /app

RUN apk add --no-cache nginx

COPY requirements.txt .
RUN pip install -r requirements.txt


COPY nginx.conf /etc/nginx/nginx.conf
COPY . .

RUN ./manage.py collectstatic

ENTRYPOINT ["./entrypoint.sh"]
