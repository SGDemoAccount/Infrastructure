resource_name :manageJenkins
action :install do
                package 'jenkins'
end

action :enable do
                service 'jenkins' do
                                action [:enable, :start]
                end
end

action :disable do
                service 'jenkins' do
                                action [:disable, :stop]
                end
end


action :uninstall do
                package 'jenkins' do
                                action :remove
                end
end
