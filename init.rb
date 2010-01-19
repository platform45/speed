require 'speed'

class ActionController::Base
  include Speed
end

class ActiveRecord::Base
  include Speed
end