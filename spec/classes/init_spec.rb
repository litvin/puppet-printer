require 'spec_helper'
describe 'printer' do
  context 'with default values for all parameters' do
    it { should contain_class('printer') }
  end
end
