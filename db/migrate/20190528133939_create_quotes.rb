class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.integer :user_id
      t.integer :company_id
      t.decimal :rate
    end

    add_index :quotes, :user_id
    add_index :quotes, :company_id
  end
end
