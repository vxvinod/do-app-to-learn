class Photo < ActiveRecord::Base
 has_many :traversals, :as => :traversable
end
