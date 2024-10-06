#!/bin/bash

cd /home/ubuntu/myblog

source venv/bin/activate

gunicorn --workers 3 --bind 0.0.0.0:80 config.wsgi:application --daemon

