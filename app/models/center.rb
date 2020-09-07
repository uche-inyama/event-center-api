# frozen_string_literal: true

class Center < ApplicationRecord
  has_one_attached :image
  validates_presence_of :building, :hall, :city, :state,
                        :capacity, :price
end
