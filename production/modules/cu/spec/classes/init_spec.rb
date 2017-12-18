require 'spec_helper'
describe 'cu' do
  context 'with default values for all parameters' do
    it { should contain_class('cu') }
  end
end
