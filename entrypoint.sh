#!/bin/sh

./manage.py migrate

if [ "$1" == "test" ]; then
  ./manage.py test
else
  gunicorn deploy_aks.wsgi -b 0.0.0.0:8000
fi
