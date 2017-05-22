hostname=node['hostname']
file '/etc/motd' do
   content "Hostname of this node is #{hostname}"
end
