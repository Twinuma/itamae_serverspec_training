require 'spec_helper'

describe package('httpd') do
  it { should be_installed }
end

describe service('httpd') do
  it { should be_enabled }
  it { should be_running }
end

describe port(80) do
  it { should be_listening }
end

describe file('/var/www/html/phpinfo.php') do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'www' }
end

describe file('/var/www/html/phpinfo.php') do
  it { should be_owned_by 'root' }
end

describe file('/var/www/html') do
  it { should be_grouped_into 'www' }
end

describe user('vagrant') do
  it { should exist }
end

%w(httpd tree git dstat php php-devel php-mbstring php-gd).each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

describe command('date') do
  its(:stdout) { should match /JST/ }
end
