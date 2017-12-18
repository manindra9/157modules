require 'spec_helper'
describe 'fileexistence' do
  context 'with default values for all parameters' do
    it { should contain_class('fileexistence') }
  end
end
