class AddColumn < ActiveRecord::Migration[7.0]
  def change
  #  remove_column :users, :type
   add_column :users, :mobile, :integer
  #  add_column :users, :type, :string
  #  remove_column :service_types, :service_center_id
  end
end
