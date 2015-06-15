# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.ssh.insert_key = false
  config.vm.define 'sftp' do |a|
    a.vm.box = "chef/centos-7.0"
    a.vm.network "private_network", ip:"192.168.50.10"
    a.cache.scope = :box if Vagrant.has_plugin? 'vagrant-cachier'
  end
end
