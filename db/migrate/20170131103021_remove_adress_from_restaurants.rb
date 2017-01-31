class RemoveAdressFromRestaurants < ActiveRecord::Migration[5.0]
  def change
    remove_column :restaurants, :adress, :string
  end
end
