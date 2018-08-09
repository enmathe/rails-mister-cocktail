class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true, allow_blank: false, :uniqueness => {:scopes => [:cocktail_id, :ingredient_id]}
end
