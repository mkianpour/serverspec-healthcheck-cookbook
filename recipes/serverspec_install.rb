bash 'install_serverspec' do
  code <<-EOH
    eval "$(/root/.rbenv/bin/rbenv init -)";
    gem install bundler
    gem install serverspec
    EOH
end

spec_path = node['serverspec']['dest_spec_path']

execute 'init serverspec' do
  command "mkdir #{spec_path};cd #{spec_path};serverspec-init"
  not_if { ::File.exist?("#{spec_path}/spec") }
end
