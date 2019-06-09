class CreateMargins < ActiveRecord::Migration[5.2]
  def change
    create_table :margins do |t|
      t.string :plan
      t.decimal :ourea_fixed
      t.decimal :ourea_factor
      t.decimal :etisalat_fixed
      t.decimal :etisalat_factor

      t.timestamps
    end
  end
end
