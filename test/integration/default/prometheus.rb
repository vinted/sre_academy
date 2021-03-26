# InSpec test for recipe sre_academy::prometheus

# The InSpec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec/resources/

control 'prometheus' do
  impact 1.0
  title 'prometheus service should be installed and running'
  desc 'prometheus service should be installed and running'

  describe service('prometheus') do
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
  end
end
