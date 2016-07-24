require 'spec_helper'

describe service('redis_6379'), :if => os[:family] == 'redhat' do
  it { should be_enabled }
  it { should be_running }
end

describe port(6379) do
  it { should be_listening }
end
