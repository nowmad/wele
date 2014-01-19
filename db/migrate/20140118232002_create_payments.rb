class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :name
      t.integer :stakeholder_id
      t.text :description
      t.integer :category_id
      t.date :payday
      t.date :forecast_date
      t.boolean :status
      t.integer :cost_center_id
      t.integer :account_id

      t.timestamps
    end
  end
end
