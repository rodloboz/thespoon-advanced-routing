class Restaurant < ApplicationRecord
  has_many :reviews

# uniqueness: { }
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :stars, inclusion: { in: [1, 2, 3, 4, 5] }
end
