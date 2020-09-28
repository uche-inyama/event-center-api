class CenterSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :building, :hall, :price, :capacity, :city, :state, :image, :date
end
