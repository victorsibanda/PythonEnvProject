#
# Cookbook:: ChefPackerAMICookbook
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.



apt_update 'update_sources' do
  action :update
end



package 'packer'

package 'chef'
