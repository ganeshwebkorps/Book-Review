class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :book_name
      t.string :category
      t.integer :writer_id
      t.timestamps
    end
  end
end
