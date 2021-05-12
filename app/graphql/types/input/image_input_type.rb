module Types
  module Input
    class ImagInputType < Types::BaseInputObject
      argument :image, String, required: true
    end
  end
end