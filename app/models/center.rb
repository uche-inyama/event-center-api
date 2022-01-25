class Center < ApplicationRecord
  has_many :appointments

  validates_presence_of :building, :address, :hall, :city, :state,
                        :capacity, :price, :image
end
