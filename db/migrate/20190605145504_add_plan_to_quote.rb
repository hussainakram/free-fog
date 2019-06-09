class AddPlanToQuote < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :plan, :string
  end
end
