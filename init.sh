unlink /etc/nginx/sites-enabled/default
ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
/etc/init.d/nginx restart
cd /home/box/web/
django-admin startproject ask
cd ask/
django-admin startproject qa
gunicorn -c /home/box/web/etc/hello.py hello:app
