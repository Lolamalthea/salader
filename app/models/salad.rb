class Salad < ActiveRecord::Base
  has_many :quantities, dependent: :destroy
  has_many :ingredients, through: :quantities
end
