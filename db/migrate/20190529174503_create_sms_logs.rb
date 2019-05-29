class CreateSmsLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :sms_logs do |t|
      t.references :user, foreign_key: true
      t.references :quote, foreign_key: true
      t.text :body
      t.string :from
      t.string :to

      t.timestamps
    end
  end
end
