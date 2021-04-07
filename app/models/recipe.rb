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
