require 'spec_helper'
describe 'check1' do
  context 'with default values for all parameters' do
    it { should contain_class('check1') }
  end
end
