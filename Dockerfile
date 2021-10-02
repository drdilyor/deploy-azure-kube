FROM python:3.9-alpine

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .
RUN ./manage.py collectstatic
ENTRYPOINT ["./entrypoint.sh"]
