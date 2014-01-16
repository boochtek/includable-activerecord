require_relative 'ext/module'

# Inclusion of this module is equivalent to subclassing from ActiveRecord::Base.
# In other words, these are effectively equivalent:
#
#   class User
#     include ActiveRecord::Model
#   end
#
#   class User < ActiveRecord::Base
#   end
module ActiveRecord::Model
  EXTENDED_MODULES = (ActiveRecord::Base.extended_modules - Object.extended_modules)
  INCLUDED_MODULES = (ActiveRecord::Base.included_modules - Object.included_modules)

  def self.included(base)
    base.extend *EXTENDED_MODULES
    base.__send__(:include, *INCLUDED_MODULES)
  end
end
