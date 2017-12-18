require 'spec_helper'
describe 'lvmm' do
  context 'with default values for all parameters' do
    it { should contain_class('lvmm') }
  end
end
