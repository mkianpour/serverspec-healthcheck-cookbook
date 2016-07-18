remote_directory "#{node['serverspec']['dest_spec_path']}/spec" do
  source "file:///#{node['serverspec']['user_spec_path']}/spec"
  action :create
end
