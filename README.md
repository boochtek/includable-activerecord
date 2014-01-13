# Includable::ActiveRecord

Build ActiveRecord models via module inclusion instead of class inheritance.

Since you're only allowed to inherit from a single class, it would be
preferable to include ActiveRecord as a module. This allows class
inheritance to be used for cases where there's an actually hierarchical
relationship.

This gem creates a module named `ActiveRecord::Model` that includes all
the same functionality as `ActiveRecord::Base`, including everything that
has been mixed into `ActiveRecord::Base`.


## Usage

In your model, just include `ActiveRecord::Model`:

```ruby
class User
  include ActiveRecord::Model
  # ...
end
```

This is effectively equivalent to:

```ruby
class User < ActiveRecord::Base
  # ...
end
```


## Installation

Add this line to your application's Gemfile:

    gem 'includable-activerecord'

And then execute:

    $ bundle


## TODO

* Add some tests. This is pretty simple, but we should test a few things.


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
