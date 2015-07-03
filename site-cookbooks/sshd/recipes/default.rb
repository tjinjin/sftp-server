#
# Cookbook Name:: sshd
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
cookbook_file '/etc/pam.d/sshd' do
  notifies :reload, 'service[sshd]'
end

cookbook_file '/etc/ssh/sshd_config' do
  notifies :reload, 'service[sshd]'
end

cookbook_file '/etc/security/sshd_access.conf'

service 'sshd' do
  supports status: true, restart: true, reload: true
  action [:enable, :start]
end
