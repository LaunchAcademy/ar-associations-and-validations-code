class CreateSelections < ActiveRecord::Migration[5.2]
  def change
    create_table :selections do |t|
      t.belongs_to :ingredient
      t.belongs_to :recipe
    end
  end
end
