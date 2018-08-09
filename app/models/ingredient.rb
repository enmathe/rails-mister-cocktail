class Ingredient < ApplicationRecord
  has_many :doses, dependent: :destroy
  validates :name, presence: true,  allow_blank: false, uniqueness: true

  before_destroy :check

  def check
    return self.dose.empty?
  end
end
