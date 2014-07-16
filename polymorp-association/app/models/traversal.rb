class Traversal < ActiveRecord::Base
	belongs_to :traversable, :polymorphic => true
end
