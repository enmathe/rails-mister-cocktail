class Ingredient < ApplicationRecord
  before_destroy :check

  has_many :doses, dependent: :destroy
  validates :name, presence: true,  allow_blank: false, uniqueness: true

  def check
    return self.doses.empty?
  end
end
