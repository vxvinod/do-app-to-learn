class AddIndexToController < ActiveRecord::Migration
  def change
  	add_index :traversals, [:traversable_id, :traversable_type]
  end
end
