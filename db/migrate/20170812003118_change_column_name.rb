class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
      rename_column :rooms, :accomodate, :accommodate
  end
end
