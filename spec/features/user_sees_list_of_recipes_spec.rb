require 'spec_helper'

feature "User views the recipes index page" do

  scenario "user sees a list of recipes" do
    recipe_1 = Recipe.create(title: "Grilled Grapes")
    recipe_2 = Recipe.create(title: "Shrimp Heaven Now")

    visit '/'

    expect(page).to have_content recipe_1.title
    expect(page).to have_content recipe_2.title
  end
end
