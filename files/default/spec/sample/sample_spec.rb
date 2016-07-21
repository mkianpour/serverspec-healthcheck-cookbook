require 'spec_helper'

describe package('git'), :if => os[:family] == 'redhat' do
  it { should be_installed }
end

describe package('git'), :if => os[:family] == 'ubuntu' do
  it { should be_installed }
end

describe service('ssh'), :if => os[:family] == 'redhat' do
  it { should be_enabled }
  it { should be_running }
end

describe service('ssh23'), :if => os[:family] == 'ubuntu' do
  it { should be_enabled }
  it { should be_running }
end
