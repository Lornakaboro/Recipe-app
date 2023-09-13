class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :food
      t.string :measurement_unit
      t.decimal :unit_price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
