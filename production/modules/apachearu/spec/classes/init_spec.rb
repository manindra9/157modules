require 'spec_helper'
describe 'apachearu' do
  context 'with default values for all parameters' do
    it { should contain_class('apachearu') }
  end
end
