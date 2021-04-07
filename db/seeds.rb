# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:

recipe_1 = Recipe.create(title: "fried brussels sprouts")
recipe_2 = Recipe.create(title: "steam brussels sprouts")

Comment.create(body: "blah blah blah", recipe: recipe_1)
Comment.create(body: "bler blerg lberg", recipe_id: recipe_1.id )
Comment.create(body: "bler blerg lberg", recipe: recipe_1 )

Comment.create(body: "blah blah blah", recipe_id: 3)
Comment.create(body: "blah blah blah", recipe_id: 3)
Comment.create(body: "blah blah blah", recipe_id: 4)
Comment.create(body: "blah blah blah", recipe: recipe_2)
Comment.create(body: "blah blah blah", recipe_id: 2)
Comment.create(body: "blah blah blah", recipe_id: 2)
Comment.create(body: "blah blah blah", recipe_id: 2)
Comment.create(body: "blah blah blah", recipe_id: 5)
Comment.create(body: "blah blah blah", recipe_id: 1)
Comment.create(body: "blah blah blah", recipe_id: 5)
Comment.create(body: "blah blah blah", recipe_id: 3)
Comment.create(body: "blah blah blah", recipe_id: 2)
Comment.create(body: "blah blah blah", recipe_id: 2)

# # Many to Many
ingredient_1 = Ingredient.create(name: "pepper")
ingredient_2 = Ingredient.create(name: "lemon juice")
ingredient_3 = Ingredient.create(name: "cruciferous veggie")

Selection.create(ingredient: ingredient_1, recipe: recipe_1)
Selection.create(ingredient_id: ingredient_3.id, recipe_id: recipe_2.id)
