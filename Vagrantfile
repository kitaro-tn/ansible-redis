# coding : utf-8
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "bento/centos-7.1"
  config.vm.network "private_network", ip: "192.168.33.105"
  config.vm.hostname = "redis-server"

  # virtualbox customize
  config.vm.provider "virtualbox" do |v|
    v.name = "redis-server"
    v.memory = 1024
    v.cpus = 1
  end

  # provision ansible
  config.vm.provision "ansible" do |ansible|
    ansible.extra_vars = { user: "vagrant" }
    ansible.playbook = "redis-playbook.yml"
  end

end
