class Recipe < ActiveRecord::Base
  validates :title, presence: true

  has_many :comments

  has_many :selections
  has_many :ingredients, through: :selections
end
