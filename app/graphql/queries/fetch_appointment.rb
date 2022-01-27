module Queries
  class FetchAppointment < Queries::BaseQuery
    type Types::AppointmentInputType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      Appointment.find(id)
    end
  end
end