class AddMarginsToInsuranceCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :insurance_companies, :fixed_margin, :decimal
    add_column :insurance_companies, :percentage_margin, :decimal
  end
end
