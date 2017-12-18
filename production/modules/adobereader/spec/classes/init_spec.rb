require 'spec_helper'
describe 'adobereader' do
  context 'with default values for all parameters' do
    it { should contain_class('adobereader') }
  end
end
