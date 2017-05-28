package 'postgresql' do
    action :install
    notifies :run,'execute[postgresql-init]',:immediately
end

service 'postgresql' do
      action [:enable,:start]
end

execute 'postgresql-init' do
      command 'postgresql-setup initdb'
      action :nothing
end

