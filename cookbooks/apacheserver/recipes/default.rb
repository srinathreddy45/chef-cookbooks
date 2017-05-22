if node['platform_family'] == "rhel"
   package="httpd"
elsif node['platform_family'] == "debian"
   package="apache2"
end
package package do
   action :install
end

service 'apache2' do
    action [:start,:enable]
end

include_recipe 'apacheserver::webconfig'
