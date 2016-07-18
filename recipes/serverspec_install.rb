
execute 'install_bundler' do
  command 'sudo gem install bundler'
end

bash 'install_serverspec' do
  code <<-EOH
    eval "$(/root/.rbenv/bin/rbenv init -)";
    sudo gem install serverspec
    EOH
end

execute 'init serverspec' do
  command 'serverspec-init .'
end
