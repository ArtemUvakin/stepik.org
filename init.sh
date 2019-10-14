unlink /etc/nginx/sites-enabled/default
ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
/etc/init.d/nginx restart
#cd /home/box/web/
#django-admin startproject ask
#cd ask/
#./manage.py startapp qa
echo "alias python=python3" >> ~/.bashrc
ln -s /usr/bin/python3.5 /usr/bin/python
gunicorn --daemon -c /home/box/web/etc/hello.py hello:app
gunicorn -c /home/box/web/etc/ask.py ask.wsgi:application
