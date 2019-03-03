#
# Cookbook:: deployjenkins
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

template '/etc/yum.repos.d/jenkins.repo' do
                source 'jenkins.repository.erb'
                owner 'root'
                group 'root'
                mode '0755'
end
#

package  'java' do
	action :install
end

manageJenkins 'install' do
		action    :install
end

