module Types
  module Input
    class CenterInputType < Types::BaseInputObject
      argument :building, String, required: true
      argument :hall, String, required: true
      argument :address, String, required: true
      argument :city, String, required: true
      argument :state, String, required: true
      argument :price, String, required: true
      argument :capacity, String, required: true
      argument :image, String, required: true
    end
  end
end