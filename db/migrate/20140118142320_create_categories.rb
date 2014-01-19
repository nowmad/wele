class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.boolean :is_debit
      t.integer :father_id

      t.timestamps
    end
  end
end
