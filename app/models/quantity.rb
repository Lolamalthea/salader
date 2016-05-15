class Quantity < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :salad
end
