require 'spec_helper'
describe 'check' do
  context 'with default values for all parameters' do
    it { should contain_class('check') }
  end
end
