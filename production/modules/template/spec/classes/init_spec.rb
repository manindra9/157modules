require 'spec_helper'
describe 'template' do
  context 'with default values for all parameters' do
    it { should contain_class('template') }
  end
end
