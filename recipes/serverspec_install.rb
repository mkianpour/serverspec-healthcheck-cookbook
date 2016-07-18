bash 'install_serverspec' do
  code <<-EOH
    eval "$(/root/.rbenv/bin/rbenv init -)";
    gem install bundler
    gem install serverspec
    EOH
end

execute 'init serverspec' do
  command 'mkdir /root/serverspec;cd /root/serverspec;serverspec-init'
  not_if { ::File.exist?("/root/serverspec/spec") }
end
