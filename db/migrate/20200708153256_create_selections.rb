class CreateSelections < ActiveRecord::Migration[5.2]
  def change
    create_table :selections do |t| 
      # t.integer :recipe_id, null: false
      # t.integer :ingredient_id, null: false

      t.belongs_to :recipe, null: false
      t.belongs_to :ingredient, null: false

      t.timestamps null: false
    end
  end
end
