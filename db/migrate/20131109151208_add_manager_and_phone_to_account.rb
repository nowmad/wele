class AddManagerAndPhoneToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :manager, :string
    add_column :accounts, :phone, :string
  end
end
