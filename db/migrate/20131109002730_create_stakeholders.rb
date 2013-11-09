class CreateStakeholders < ActiveRecord::Migration
  def change
    create_table :stakeholders do |t|
      t.string :name
      t.boolean :is_client
      t.boolean :is_supplier
      t.text :description

      t.timestamps
    end
  end
end
