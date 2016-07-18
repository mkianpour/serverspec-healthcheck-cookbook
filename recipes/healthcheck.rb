remote_directory "#{node['serverspec']['dest_spec_path']}/spec" do
  source "#{node['serverspec']['user_spec_path']}"
  action :create
end
