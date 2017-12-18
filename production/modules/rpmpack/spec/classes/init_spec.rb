require 'spec_helper'
describe 'rpmpack' do
  context 'with default values for all parameters' do
    it { should contain_class('rpmpack') }
  end
end
