# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|

  config.vm.define :servidorhttp do |node|
  node.vm.box = "caja_ubuntu"
  node.vm.hostname = "http"
  node.vm.network :private_network, ip: "192.168.100.20", netmask: "255.255.255.0"
  node.vm.network "forwarded_port", guest: 80, host: 3000
  node.vm.provision :ansible do |ansible|
   ansible.playbook = "http_conf.yml"
   end
  end

  config.vm.define :servidordb do |node|
  node.vm.box = "caja_ubuntu"
  node.vm.hostname = "db"
  node.vm.network :private_network, ip: "192.168.100.30", netmask: "255.255.255.0"
  node.vm.network "forwarded_port", guest: 80, host: 3001
  node.vm.provision :ansible do |ansible|
   ansible.playbook = "db_conf.yml"
   end
  end

  config.vm.define :servidorLB1 do |node|
  node.vm.box = "caja_ubuntu"
  node.vm.hostname = "nodo1"
  node.vm.network :private_network, ip: "192.168.100.40", netmask: "255.255.255.0"
  node.vm.network "forwarded_port", guest: 80, host: 3002
  node.ssh.username = 'vagrant'
  node.ssh.password = 'vagrant'
  node.ssh.insert_key = 'true'
#  node.vm.provision :ansible do |ansible|
#   ansible.playbook = "lb1_conf.yml"
#   end
  end

  config.vm.define :servidorLB2 do |node|
  node.vm.box = "caja_ubuntu"
  node.vm.hostname = "nodo2"
  node.vm.network :private_network, ip: "192.168.100.50", netmask: "255.255.255.0"
  node.vm.network "forwarded_port", guest: 80, host: 3003
  node.ssh.username = 'vagrant'
  node.ssh.password = 'vagrant'
  node.ssh.insert_key = 'true'
#  node.vm.provision :ansible do |ansible|
#   ansible.playbook = "lb1_conf.yml"
#   end
  end
end