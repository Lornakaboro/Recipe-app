class CreatePublicRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :public_recipes do |t|
      t.string :name
      t.text :description
      t.boolean :public, default: false
      t.timestamps
    end
  end
end
