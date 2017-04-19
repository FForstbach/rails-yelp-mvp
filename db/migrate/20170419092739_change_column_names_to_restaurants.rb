class ChangeColumnNamesToRestaurants < ActiveRecord::Migration[5.0]
  def change
    rename_column :restaurants, :adress, :address
    rename_column :restaurants, :phone, :phone_number
  end
end
