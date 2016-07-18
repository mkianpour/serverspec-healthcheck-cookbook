directory "#{node['serverspec']['dest_spec_path']}/spec" do
  path "#{node['serverspec']['user_spec_path']}/spec"
  action :create
end
