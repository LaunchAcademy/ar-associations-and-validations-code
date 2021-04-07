class CreateSelections < ActiveRecord::Migration[5.2]
  def change
    create_table :selections do |t| 
      t.belongs_to :recipe, null: false
      t.belongs_to :ingredient, null: false
    end
  end
end
