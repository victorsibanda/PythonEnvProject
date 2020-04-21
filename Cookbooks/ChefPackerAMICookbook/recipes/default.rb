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

bash 'install_requirements' do
  code <<-EOH
    sudo pip3 install atomicwrites==1.3.0
    sudo pip3 install attrs==19.1.0
    sudo pip3 install beautifulsoup4==4.8.0
    sudo pip3 install certifi==2019.6.16
    sudo pip3 install chardet==3.0.4
    sudo pip3 install idna==2.8
    sudo pip3 install importlib-metadata==0.19
    sudo pip3 install more-itertools==7.2.0
    sudo pip3 install packaging==19.1
    sudo pip3 install pluggy==0.12.0
    sudo pip3 install py==1.8.0
    sudo pip3 install pyparsing==2.4.2
    sudo pip3 install pytest==5.1.0
    sudo pip3 install requests==2.22.0
    sudo pip3 install six==1.12.0
    sudo pip3 install soupsieve==1.9.2
    sudo pip3 install urllib3==1.25.3
    sudo pip3 install wcwidth==0.1.7
    sudo pip3 install zipp==0.5.2
  EOH
end

directory '/home/ubuntu/Downloads' do
  owner 'root'
  group 'root'
  action :create
  mode '0777'
end
