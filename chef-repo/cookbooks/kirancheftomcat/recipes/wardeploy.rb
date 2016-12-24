#
# Cookbook Name:: kirancheftomcat
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
remote_file '/home/tomcat/benefits.war' do
  source 'http://www.oracle.com/webfolder/technetwork/tutorials/obe/fmw/wls/10g/r3/appdeploy/deploy/deploy_apps/files/version2/benefits.war'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
