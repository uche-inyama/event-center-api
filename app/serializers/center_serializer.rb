# frozen_string_literal: true

class CenterSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :building, :hall, :price, :capacity, :city, :state, :image

  def image
    rails_blob_url(object.image, only_path: true) if
    object.image.attached?
  end
end
