require 'spec_helper'
describe 'l1tasks' do
  context 'with default values for all parameters' do
    it { should contain_class('l1tasks') }
  end
end
