class RemoveQuantityFromFoods < ActiveRecord::Migration[7.0]
  def change
    remove_column :foods, :quantity, :decimal
  end
end
