require 'spec_helper'

RSpec.configure do |config|
  def my_context_helper(&block)
    block.call
  end
end

RSpec.describe 'Smoke Test' do
  my_context_helper do
  end
end
