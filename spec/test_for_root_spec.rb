require 'spec_helper'

describe TestForRoot do
  it 'should have a version number' do
    TestForRoot::VERSION.should_not be_nil
  end

  it 'should do something useful' do
    false.should be_true
  end
end
