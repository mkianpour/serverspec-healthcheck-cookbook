# Using rspec as I don't want to test installation of
# serverspec with serverspec! :)

def check_serverspec
  `sudo find /opt/chef -name 'serverspec'`
end

describe check_serverspec do
  it { should include('serverspec', 'gems') }
end

describe 'serverspec_init_check' do
  expect(File).to exist('/home/root/Rakefile')
end
