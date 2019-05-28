class CreateInsurnaceCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :insurance_companies do |t|
      t.string :name
      t.string :contact
      t.string :office
    end
  end
end
