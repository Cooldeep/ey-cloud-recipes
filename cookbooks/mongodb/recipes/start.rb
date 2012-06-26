execute "enable mongodb" do
  command "rc-update add mongodb default"
  action :run
end

#execute "start mongodb" do
#  command "/etc/init.d/mongodb restart"
#  action :run
#  not_if "/etc/init.d/mongodb status"
#end

service "mongodb" do
  start_command "/etc/init.d/mongodb restart"
  action :start
  not_if "/etc/init.d/mongodb status"
end
