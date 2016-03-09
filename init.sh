git config --global push.default matching
git config --global user.name luixo
git config --global user.email lexx92@mail.ru

sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/nginx.conf
sudo /etc/init.d/nginx restart
sudo ln -s /home/box/web/etc/test.gunicorn /etc/gunicorn.d/test
#sudo ln -s /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/gunicorn.conf.py
sudo /etc/init.d/gunicorn restart