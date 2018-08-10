class Review < ApplicationRecord
  belongs_to :cocktail
  validates :rating, presence: true, allow_blank: false, inclusion: { in:[0,1,2,3,4,5] }

end
