require 'spec_helper'
describe 'createfile' do
  context 'with default values for all parameters' do
    it { should contain_class('createfile') }
  end
end
