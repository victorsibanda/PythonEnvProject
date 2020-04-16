#
# Cookbook:: PythonDevEnvCookbook
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

apt_update 'update_sources' do
  action :update
end

package 'python3-pip'

package 'packer'


template '/home/ubuntu/requirements.txt' do
  source 'requirements.txt.erb'
end


bash 'pip install requirements.txt' do
  code <<-EOL
  pip3 install -r /home/ubuntu/requirements.txt
  EOL
end

directory '/home/ubuntu/Downloads' do
  owner 'root'
  group 'root'
  action :create
  mode '0777'



end
