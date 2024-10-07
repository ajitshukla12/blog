#!/bin/bash
cd /home/ubuntu/myblog

chmod -R 777 /home/ubuntu/myblog

python3 -m venv venv
source venv/bin/activate

pip install -r requirements.txt

python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic --noinput
