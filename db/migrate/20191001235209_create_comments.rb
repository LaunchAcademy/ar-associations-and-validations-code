class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :body, null: false
      t.belongs_to :recipe, null: false
      # t.integer  :recipe_id, null: false

      t.timestamps null: false
    end
  end
end
