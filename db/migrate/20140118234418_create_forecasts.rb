class CreateForecasts < ActiveRecord::Migration
  def change
    create_table :forecasts do |t|
      t.integer :category_id
      t.integer :year
      t.integer :month
      t.float :value

      t.timestamps
    end
  end
end
