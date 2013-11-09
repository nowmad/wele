class AddDescriptionAndOtherPhoneToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :description, :text
    add_column :accounts, :other_phone, :string
  end
end
