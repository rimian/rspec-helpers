RSpec.configure do |c|
  c.alias_example_group_to :detail, :detailed => true
end

RSpec.describe "a thing" do
  detail do

  end
end
