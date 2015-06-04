#
# Cookbook Name:: win2012r2
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

windows_feature 'IIS-WebServer' do
  action :install
  all true
end

group 'vagrant_admins' do
  members ['vagrant']
end

user 'bjorn' do
  password '$1$JJsvHslV$szsCjVEroftprNn4JHtDi'
end

group "administrators" do
  action :modify
  members ['bjorn']
  append true
end