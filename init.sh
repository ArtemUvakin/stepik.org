sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
sudo ln -s /home/box/web/etc/gunicorn.conf  /etc/gunicorn.d/test.conf
sudo /etc/init.d/gunicorn stop
sudo /etc/init.d/gunicorn start hello:app
sudo /etc/init.d/mysql start
