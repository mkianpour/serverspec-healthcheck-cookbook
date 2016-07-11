include_recipe 'apt'
include_recipe 'git'

package [ 'git-core', 'curl', 'zlib1g-dev', 'build-essential',
          'libssl-dev', 'libreadline-dev', 'libyaml-dev', 'libsqlite3-dev',
          'sqlite3', 'libxml2-dev', 'libxslt1-dev', 'libcurl4-openssl-dev',
          'python-software-properties', 'libffi-dev' ] do
  action :install
end

bash 'install_rbenv' do
  code <<-EOH
    git clone https://github.com/rbenv/rbenv.git ~/.rbenv
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(rbenv init -)"' >> ~/.bashrc
    exec $SHELL
    EOH

bash 'install_ruby'
  code <<-EOH
    git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build > /var/chef-run.log
    echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
    exec $SHELL
    rbenv install 2.3.1
    rbenv global 2.3.1
    ruby -v
    EOH
  # user  'root'
  # group 'root'
end

execute 'install_bundler' do
  command 'gem install bundler'
end
