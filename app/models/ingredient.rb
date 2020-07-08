class Ingredient < ActiveRecord::Base 
  has_many :selections 
  has_many(:recipes, through: :selections)

  validates :name, presence: true


end