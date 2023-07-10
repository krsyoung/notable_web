require "notable_web/version"

# dependencies
require "notable"
require "groupdate"
require "pagy"
require "public_suffix"

# engine
require "notable_web/engine"

module NotableWeb
  class << self
    attr_accessor :user_name_method
    attr_accessor :time_zone
  end
  self.user_name_method = proc{|user| user.try(:name) || "#{user.class.name} #{user.id}" }
end
