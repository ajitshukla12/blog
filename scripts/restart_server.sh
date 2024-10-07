#!/bin/bash

cd /home/ubuntu/myblog || exit 1

source venv/bin/activate

gunicorn --workers 3 --bind 0.0.0.0:80 config.wsgi:application --daemon

