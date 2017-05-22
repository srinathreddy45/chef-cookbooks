package 'postgresql-server' do
    action :install
    notifies :run,'execute[postgresql-init]'
end

execute 'postgresql-init' do
      command 'postgresql-setup initdb'
      action :nothing
end

service 'postgresql' do
      action [:enable,:start]
end
