class Event < ActiveRecord::Base
	has_many :traversals, :as => :traversable
end
