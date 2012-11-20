#
# Cookbook Name:: foo
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

template "/tmp/demo" do
  variables(
    :my_string => node['custom_string']
  )
end
