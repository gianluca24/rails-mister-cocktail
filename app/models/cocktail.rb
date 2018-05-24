class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroyZ
  validates :name, uniqueness: true, presence: true
end
