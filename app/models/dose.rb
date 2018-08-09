class Dose < ApplicationRecord
  belongs_to :cocktail, optional: true
  belongs_to :ingredient, optional: true

  validates :description, presence: true, allow_blank: false
end
