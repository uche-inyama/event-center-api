class CenterSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :building, :address, :hall, :price, :capacity, :city, :state, :image
end
