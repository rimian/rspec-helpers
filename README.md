# RSpec Helpers

This is a spike for context helpers.

```ruby
require 'spec_helper'

# Put this in a helper somewhere.
RSpec.configure do |config|
  def my_context_helper(&block)
    block.call if block_given?
  end
end

RSpec.describe 'Smoke Test' do
  my_context_helper

  my_context_helper do
    # do something
  end
end
```

## CODE OF CONDUCT

See CODE_OF_CONDUCT.md
