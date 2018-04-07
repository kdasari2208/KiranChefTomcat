#
# Cookbook Name:: EC2
# Recipe:: default
#
# Copyright 2018, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute 'aws ec2 run-instances --image-id ami-d874e0a0 --count 1 --instance-type t2.micro --key-name KiranChefKey --security-group-ids sg-26de795a --subnet-id subnet-a93b1dcf --region us-west-2' do
 action :run
end
