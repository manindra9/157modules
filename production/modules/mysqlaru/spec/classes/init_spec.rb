require 'spec_helper'
describe 'mysqlaru' do
  context 'with default values for all parameters' do
    it { should contain_class('mysqlaru') }
  end
end
