require 'spec_helper'

RSpec.configure do |config|
  def my_context_helper(&block)
    block.call if block_given?
  end
end

RSpec.describe 'Smoke Test' do
  my_context_helper

  my_context_helper do

  end
end
