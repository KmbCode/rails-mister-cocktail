# frozen_string_literal: true
class Cocktail < ApplicationRecord
  validates:name, uniqueness: true
  validates_presence_of :name
  has_many :doses, dependent: :delete_all
  has_many :ingredients, through: :doses, dependent: :restrict_with_exception
end
