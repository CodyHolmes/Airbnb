class AddExtraFieldsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :phone_number, :string
    add_column :users, :description, :text
  end
end
