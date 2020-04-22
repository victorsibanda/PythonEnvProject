#
# Cookbook:: ChefPackerAMICookbook
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.



apt_update 'update_sources' do
  action :update
end



package 'packer'

bash 'install chef' do
  code <<-EOL
  wget  https://packages.chef.io/files/stable/chef-workstation/0.2.43/ubuntu/18.04/chef-workstation_0.2.43-1_amd64.deb
  sudo dpkg -i chef-workstation_*.deb
  rm chef-workstation_*.deb
  EOL
end

bash 'install_java' do
  code <<-EOH
    sudo apt-get -y install default-jdk default-jre
    EOH
end
