class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :discription
      t.integer :book_id
      t.integer :reviewer_id
      t.timestamps
    end
  end
end
