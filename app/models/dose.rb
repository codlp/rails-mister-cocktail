class Dose < ApplicationRecord
  # VALIDATIONS
  # A dose must have a description, a cocktail and an ingredient
  # and [cocktail, ingredient] pairings should be unique.
  validates_presence_of :description, :cocktail, :ingredient
  validates :cocktail, uniqueness: { scope: :ingredient }
  #ASSOCIATIONS
  belongs_to :ingredient
  belongs_to :cocktail
end
