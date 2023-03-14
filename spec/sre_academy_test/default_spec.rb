# ChefSpec test for default recipe
# examples https://github.com/chefspec/chefspec/tree/master/examples

require 'chefspec'
require 'chefspec/berkshelf'

describe 'sre_academy::default' do
  context 'When all attributes are default' do
    let(:chef_run) do
      runner = ChefSpec::SoloRunner.new(platform: 'rocky', version: '8')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
