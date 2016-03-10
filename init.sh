git config --global push.default matching
git config --global user.name luixo
git config --global user.email lexx92@mail.ru
mkdir /home/box/web/logs 2> /dev/null

sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/nginx.conf
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/django.wsgi /etc/gunicorn.d/django.wsgi
#sudo /etc/init.d/gunicorn restart

kill -HUP /home/box/web/etc/gunicorn.pid 2> /dev/null
gunicorn -c etc/gunicorn.conf.py /etc/gunicorn.d/django.wsgi
