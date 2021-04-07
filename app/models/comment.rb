class Comment < ActiveRecord::Base
  
  validates :body, presence: true
  validates :recipe_id, presence: true
  # not required in Rails 5

  belongs_to :recipe
  # CREATE A RECIPE METHID THAT RETRIEVES THE ASSOCIATED RECIPE FOR A COMMENT

  # this ^
  # is the equivalent of this down here

  # def recipe
  #   # self refers to the object we will call this method on
  #   Recipe.find(self.recipe_id)
  #   # find the corresponding recipe using a foriegn key
  # end


end
