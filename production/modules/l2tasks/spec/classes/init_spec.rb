require 'spec_helper'
describe 'l2tasks' do
  context 'with default values for all parameters' do
    it { should contain_class('l2tasks') }
  end
end
