cd /vagrant
bundle install
bundle exec unicorn -c config/unicorn.rb -D
chmod +x config/unicorn_init.sh
sudo ln -s /vagrant/config/unicorn_init.sh /etc/init.d/unicorn
bundle install --binstubs
sudo service unicorn restart