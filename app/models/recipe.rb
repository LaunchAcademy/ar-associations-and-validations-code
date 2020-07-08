class Recipe < ActiveRecord::Base
  # validates :title, presence: true
  # called for this persistence CRUD method:
  # .save
  # .create
  # .update .update_attributes

  has_many :comments
  # this ^
  # is the equivalent of...
  # def comments
  #   Comments.where(recipe_id: self.id)
  # end

  # has_many :selections
  # has_many :ingredients, through: :selections
end
