require 'spec_helper'

RSpec.configure do |config|
  def my_context_helper(arg)
    @my_var = arg
  end

  def my_operation_helper(&block)
    operation = block.call if block_given?

    # do some operation with the context
  end
end

RSpec.describe 'Smoke Test' do
  my_context_helper 3

  my_operation_helper do
    'hello world'
  end
end
