class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode
  belongs_to :user
  validates :rating, inclusion: { in: [1,2,3,4,5] }

end
