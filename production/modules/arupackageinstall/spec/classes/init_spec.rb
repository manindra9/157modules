require 'spec_helper'
describe 'arupackageinstall' do
  context 'with default values for all parameters' do
    it { should contain_class('arupackageinstall') }
  end
end
