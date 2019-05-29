class ChangeQuoteRateType < ActiveRecord::Migration[5.2]
  def change
    change_column :quotes, :rate, :string
  end
end
