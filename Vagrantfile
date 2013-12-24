  # -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "UbuntuRuby"

  config.vm.box_url = "https://dl.dropboxusercontent.com/s/o5i10hcu57jamg8/ubuntu64-ruby2.box"

  config.vm.network :forwarded_port, guest: 80, host: 8080

  config.vm.provision :shell, :path => "./vagrant/install-rvm.sh",  :args => "stable"
  config.vm.provision :shell, :path => "./vagrant/install-ruby.sh", :args => "1.9.3 rails haml-rails"
  config.vm.provision :shell, :path => "./vagrant/setup-nginx.sh"
  config.vm.provision :shell, :path => "./vagrant/setup-unicorn.sh"
  config.vm.provision :shell, :path => "./vagrant/restart_servers.sh"
end
