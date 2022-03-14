require 'spec_helper'

class SmokeTest
  def self.run(ctx, vars)
    [ctx, vars].join
  end
end

module MyHelper
  def helper_method(ctx, vars)
    SmokeTest.run(ctx, vars)
  end
end

RSpec.configure do |config|
  config.include MyHelper

  def context_helper(&block)
    let(:ctx) { block.call }
  end

  def vars_helper(&block)
    let(:vars) { block.call }
  end

  def execute_subject
    helper_method(ctx, vars)
  end
end

RSpec.describe  do
  vars_helper do
    3
  end

  context_helper do
    'hello world'
  end

  it do
    expect(execute_subject).to eq 'hello world3'
  end
end
