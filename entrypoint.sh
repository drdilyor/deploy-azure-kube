#!/bin/sh

./manage.py migrate

if [ "$1" == "test" ]; then
  ./manage.py test
else
  nginx
  gunicorn deploy_aks.wsgi -b 127.0.0.1:8000
fi
