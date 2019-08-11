class Ingredient < ApplicationRecord
  validates_presence_of :name
  validates:name, uniqueness: true
  has_many :doses
end
