require 'spec_helper'
describe 'checksumdir' do
  context 'with default values for all parameters' do
    it { should contain_class('checksumdir') }
  end
end
