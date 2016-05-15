class Ingredient < ActiveRecord::Base
  has_many :quantities, dependent: :destroy
end
