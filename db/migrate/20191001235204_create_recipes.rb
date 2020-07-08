class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title, null: false

      t.timestamps
    end
  end
end

# recipe has many comments 
# comment belongs to a single recipe