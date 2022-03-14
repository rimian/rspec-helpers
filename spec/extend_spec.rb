
module Helpers
  def helper(&block)
    let(:foo) { block.call }
  end
end

module ExecHelpers
  def exec_help(&block)
    foo
  end
end

RSpec.configure do |c|
  c.extend Helpers
  c.include ExecHelpers
end

RSpec.describe "an example group" do
  helper do
    3
  end

  it "does not have access to the helper methods defined in the module" do
    expect(exec_help).to eq 3
  end
end
