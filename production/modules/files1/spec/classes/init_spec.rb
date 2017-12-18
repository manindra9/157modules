require 'spec_helper'
describe 'files1' do
  context 'with default values for all parameters' do
    it { should contain_class('files1') }
  end
end
