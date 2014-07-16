class Author < ActiveRecord::Base
	has_many :traversals, :as => :traversable
end
