
execute 'install_bundler' do
  command 'gem install bundler'
end

bash 'install_serverspec' do
  code <<-EOH
    eval "$(/root/.rbenv/bin/rbenv init -)";
    gem install serverspec
    EOH
end
