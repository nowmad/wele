class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :bank_number
      t.string :bank_name
      t.string :agency
      t.string :account_number

      t.timestamps
    end
  end
end
