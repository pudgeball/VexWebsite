sudo apt-get update
sudo apt-get -y install nginx
nginx -h
cat /etc/init.d/nginx
/etc/init.d/nginx -h
sudo service nginx start
cd /etc/nginx
less nginx.conf
cd sites-enabled
sudo rm default
sudo ln -s /vagrant/config/nginx.conf projectname
sudo service nginx restart
sudo apt-get -y install libpq-dev