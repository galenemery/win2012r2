require 'spec_helper'

describe 'win2012r2::default' do

describe windows_feature('IIS-WebServer') do
  it { should be_installed }
end

describe port(80) do
  it { should be_listening }
end

describe user('vagrant') do
  it { should belong_to_group 'Administrators' }
end

describe group('vagrant_admins') do
  it { should exist }
end

describe user('vagrant') do
  it { should belong_to_group 'vagrant_admins' }
end

# describe file('C:\inetpub\FourthCoffee\Default.cshtml') do
#   it { should be_file }
# end
end
