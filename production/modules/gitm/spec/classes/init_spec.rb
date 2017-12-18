require 'spec_helper'
describe 'gitm' do
  context 'with default values for all parameters' do
    it { should contain_class('gitm') }
  end
end
