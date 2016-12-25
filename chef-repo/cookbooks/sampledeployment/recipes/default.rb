#
# Cookbook Name:: sampledeployment
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
###Clearing tomcat7 webapps ROOT folder###
bash 'Clearing tomcat7 webapps ROOT folder' do
  user 'root'
  cwd '/home/ubuntu'
  code <<-EOH
  sudo rm -rf /var/lib/tomcat7/webapps/ROOT
  EOH
end

###copying and replacing existing ROOT.war with new ROOT.war in our cookbook files/default directory###
cookbook_file "/var/lib/tomcat7/webapps/benefits.war" do
  source "benefits.war"
  mode "0755"
  notifies :restart, "service[tomcat7]"
end

###restarting tomcat7 service###
service 'tomcat7' do
  supports :restart => true
end