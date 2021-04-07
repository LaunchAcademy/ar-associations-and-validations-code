require 'spec_helper'

feature "User views a recipes show page" do

  scenario "user sees a recipes title, speaker, description, and comments" do
    recipe_1 = Recipe.create(title: "Grilled Grapes")

    comment_1 = Comment.create(recipe: recipe_1, body: "WHY?")

    # well looky here
    ingredient = Ingredient.create(name: "Oregano")
    selection = Selection.create(comment: comment_1, recipe: recipe_1)

    visit '/recipes/1'

    expect(page).to have_content recipe_1.title
    expect(page).to have_content comment_1.body
    expect(page).to have_content ingredient.name
  end
end
