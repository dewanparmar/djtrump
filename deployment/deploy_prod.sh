#!/bin/sh

ssh root@45.56.122.17 <<EOF
  cd /var/www/djtrump
  git pull
  source /opt/envs/djtrump/bin/activate
  pip install -r requirements.txt
  ./manage.py migrate
  sudo supervisorctl restart djtrump
  exit
EOF
