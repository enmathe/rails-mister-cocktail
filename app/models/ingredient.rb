class Ingredient < ApplicationRecord

  has_many :doses, dependent: :destroy
  validates :name, presence: true,  allow_blank: false, uniqueness: true
end
