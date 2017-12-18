require 'spec_helper'
describe 'aru' do
  context 'with default values for all parameters' do
    it { should contain_class('aru') }
  end
end
