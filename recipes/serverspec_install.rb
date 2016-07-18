bash 'install_serverspec' do
  code <<-EOH
    eval "$(/root/.rbenv/bin/rbenv init -)";
    gem install bundler
    gem install serverspec
    serverspec-init /root
    EOH
end

execute 'init serverspec' do
  command 'serverspec-init /root/'
end
