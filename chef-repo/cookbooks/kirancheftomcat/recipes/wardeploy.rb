#
# Cookbook Name:: kirancheftomcat
# Recipe:: wardeploy
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
file '/home/tomcat/benefits.war' do
  source 'benefits.war'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
