class CreateShoppingListItems < ActiveRecord::Migration[7.0]
  def change
    create_table :shopping_list_items do |t|
        t.references :recipe, foreign_key: true
        t.references :food, foreign_key: true
        t.integer :quantity
        t.timestamps
    end
  end
end
