class RemoveMarginFields < ActiveRecord::Migration[5.2]
  def change
    remove_column :insurance_companies, :fixed_margin
    remove_column :insurance_companies, :percentage_margin
  end
end
