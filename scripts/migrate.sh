#!/bin/bash
cd cd /home/ec2_user/myblog
chmod -R 777 /home/ec2_user/myblog

python3 -m venv venv
source venv/bin/activate

pip install -r requirements.txt

python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic --noinput
