#
# Cookbook Name:: kirancheftomcat
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
file '/var/lib/tomcat7/webapps/ROOT' do
  verify do |path|
    true
  end
end