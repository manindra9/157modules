require 'spec_helper'
describe 'usercreatew' do
  context 'with default values for all parameters' do
    it { should contain_class('usercreatew') }
  end
end
