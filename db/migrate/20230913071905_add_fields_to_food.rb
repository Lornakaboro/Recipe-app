class AddFieldsToFood < ActiveRecord::Migration[7.0]
  def change
    remove_column :foods, :description, :text
    add_column :foods, :measurement_unit, :string
    add_column :foods, :unit_price, :float
  end
end
