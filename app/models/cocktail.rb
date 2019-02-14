class Cocktail < ApplicationRecord
  # VALIDATIONS
  validates :name, :presence => true, :uniqueness => true
  # ASSOCIATIONS
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
end
