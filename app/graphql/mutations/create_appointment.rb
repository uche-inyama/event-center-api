module Mutations
  class CreateAppointment < Mutations::BaseMutation
    argument :params, Types::Input::AppointmentInputType, null: false
    field :appointment, Types::AppointmentType, null: false

    def resolve(params:)
      appointment_params = Hash params
      appointment = Appointment.new(appointment_params)
      if appointment.save
        appointment: appointment
        errors: []
      else
        appointment: nil
        errors: appointment.errors.full_messages
      end
    end
  end
end