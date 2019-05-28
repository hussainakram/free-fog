class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :passport_id, :string
    add_column :users, :phone, :string
    add_column :users, :dob, :datetime
  end
end
