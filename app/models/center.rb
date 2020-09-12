class Center < ApplicationRecord
  validates_presence_of :building, :hall, :city, :state,
                        :capacity, :price, :image
end
