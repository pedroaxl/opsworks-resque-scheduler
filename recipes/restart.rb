node[:deploy].each do |application, deploy|
  service "resque-scheduler-#{application}" do
    action [:stop, :start]
    provider Chef::Provider::Service::Upstart
  end
end
