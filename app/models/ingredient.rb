class Ingredient < ApplicationRecord
  # VALIDATIONS
  validates :name, :presence => true, :uniqueness => true
  # ASSOCIATIONS
  has_many :doses
end
