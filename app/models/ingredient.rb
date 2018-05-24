class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, uniquness: true, presence: true
end
