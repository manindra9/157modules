require 'spec_helper'
describe 'abc1' do
  context 'with default values for all parameters' do
    it { should contain_class('abc1') }
  end
end
