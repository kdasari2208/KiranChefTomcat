#
# Cookbook Name:: kirancheftomcat
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
cookbook_file "/var/lib/tomcat7/webapps/benefits.war" do
  source 'benefits.war'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end