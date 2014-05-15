service 'resque-scheduler' do
  action [:stop]
  provider Chef::Provider::Service::Upstart
end
