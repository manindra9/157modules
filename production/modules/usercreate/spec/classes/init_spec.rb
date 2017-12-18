require 'spec_helper'
describe 'usercreate' do
  context 'with default values for all parameters' do
    it { should contain_class('usercreate') }
  end
end
