# # encoding: utf-8

describe package('git') do
  it { should be_installed }
end

describe package('openjdk-8-jdk') do
   it { should be_installed }
end

describe command('java -version') do
   its(:stderr) { should include '1.8' }
end
