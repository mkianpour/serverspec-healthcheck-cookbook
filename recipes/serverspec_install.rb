bash 'install_serverspec' do
  code <<-EOH
    eval "$(/root/.rbenv/bin/rbenv init -)";
    gem install bundler
    gem install serverspec
    EOH
end

spec_path = node['serverspec']['dest_spec_path']

# execute 'sample specs' do
#   command "mkdir #{spec_path};cd #{spec_path}"
#   not_if { ::File.exist?("#{spec_path}/spec") }
# end

remote_directory "#{node['serverspec']['dest_spec_path']}/spec" do
  source "#{node['serverspec']['user_spec_path']}"
  action :create
end

remote_file "#{node['serverspec']['dest_spec_path']}/Rakefile" do
  source "#{node['serverspec']['user_spec_path']}/Rakefile"
  action :create
end
