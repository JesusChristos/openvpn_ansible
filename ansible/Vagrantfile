# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/bionic64"  
  config.vm.synced_folder "./", "/opt/"
  config.vm.provider "virtualbox" do |vb|
     vb.cpus = 1
     vb.memory = "1024"
   end

  config.vm.provision "shell", inline: <<-SHELL
    apt-add-repository ppa:ansible/ansible
    apt-get update
    apt-get install -y git ansible python-pip
    pip install -r /opt/requirements.txt
  SHELL
end
