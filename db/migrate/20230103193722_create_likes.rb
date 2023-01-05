class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.integer :total_like
      t.integer :likeable_id
      t.string :likeable_type
      t.timestamps
    end
  end
end
