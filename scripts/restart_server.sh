#!/bin/bash

cd /home/ec2_user/myblog

source venv/bin/activate

gunicorn --workers 3 --bind 0.0.0.0:80 config.wsgi:application --daemon

systemctl restart nginx
