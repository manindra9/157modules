require 'spec_helper'
describe 'servicearray' do
  context 'with default values for all parameters' do
    it { should contain_class('servicearray') }
  end
end
