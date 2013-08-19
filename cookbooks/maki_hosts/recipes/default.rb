#
# Cookbook Name:: maki_hosts
# Recipe:: default
#
# Copyright 2013, Open English
#
# All rights reserved - Do Not Redistribute
#
template "/etc/hosts" do
  source "maki_hosts.txt.erb"
  variables :hosts => node['hosts']
  action :create
end

template "/etc/hostname:" do
  source "maki_hostname.txt.erb"
  variables :hostname => node['hostname']
  action :create
end
