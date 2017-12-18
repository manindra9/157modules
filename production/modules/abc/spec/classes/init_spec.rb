require 'spec_helper'
describe 'abc' do
  context 'with default values for all parameters' do
    it { should contain_class('abc') }
  end
end
