require 'spec_helper'
describe 'rgroup' do
  context 'with default values for all parameters' do
    it { should contain_class('rgroup') }
  end
end
