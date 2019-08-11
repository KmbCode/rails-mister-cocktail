class Dose < ApplicationRecord
  validates_presence_of :description, :ingredient, :cocktail
  belongs_to :cocktail
  belongs_to :ingredient
  validates :cocktail, uniqueness: { scope: :ingredient }
end
