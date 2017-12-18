require 'spec_helper'
describe 'gcc' do
  context 'with default values for all parameters' do
    it { should contain_class('gcc') }
  end
end
