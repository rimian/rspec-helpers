require 'spec_helper'

class SmokeTest
  def self.run
  end
end

RSpec.configure do |config|
  def my_context_helper(arg)
    @my_var = arg
  end

  def my_operation_helper(&block)
    operation = block.call if block_given?

    # do some operation with the context
    SmokeTest.run
  end
end

RSpec.describe SmokeTest do
  subject { described_class }

  my_context_helper 3

  my_operation_helper do
    'hello world'
  end

  it 'is nil' do
    expect(subject.run).to be_nil
  end
end
