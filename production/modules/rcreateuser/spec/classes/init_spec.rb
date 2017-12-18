require 'spec_helper'
describe 'rcreateuser' do
  context 'with default values for all parameters' do
    it { should contain_class('rcreateuser') }
  end
end
