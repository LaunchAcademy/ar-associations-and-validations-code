class Comment < ActiveRecord::Base
  belongs_to :recipe

  validates :body, presence: true
  # validates :recipe_id, presence: true
  # not required in Rails 5
end
