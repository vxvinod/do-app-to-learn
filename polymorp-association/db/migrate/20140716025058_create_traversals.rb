class CreateTraversals < ActiveRecord::Migration
  def change
    create_table :traversals do |t|
      t.text :content
      t.integer :traversable_id
      t.string :traversable_type

      t.timestamps
    end
  end
end
