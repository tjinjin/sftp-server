#
# Cookbook Name:: vsftpd
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'vsftpd'

service 'vsftpd' do
  action [:enable, :start]
end
