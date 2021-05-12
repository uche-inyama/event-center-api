module Types
  module Input
    class AppointmentInputType < Types::BaseInputObject
      argument :username, String, required: true
      argument :hall, String, required: true
      argument :email, String, required: true
      argument :city,  String, required: true
      argument :user_id, Integer, required: true
      argument :center_id, Integer, required: true
    end
  end
end