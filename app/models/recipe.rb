class Recipe < ActiveRecord::Base
  validates :title, presence: true

  has_many :comments

  # this ^
  # is the equivalent of...

  # def comments
  #   Comments.where(recipe_id: self.id)
  # end

  has_many :selections
  has_many :ingredients, through: :selections
end

# recipe1 = Recipe.create(name: "Fried Brussels Sprouts")
# comment1 = Comment.create(body: "eh", recipe_id: recipe1.id)
# recipe1.comments