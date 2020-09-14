class AppointmentsController < ApplicationController
  def create
    appointment = Appointment.create!(appointment_params)
    if appointment
      render json: {
        status: :created,
        appointment: appointment
      } else
          render json: {
            status: 401
          }
    end
  end

  # rubocop:disable
  def show
    appointment = Appointment.all
    return  render json: {
        status: :success,
        appointments: appointment
      } unless appointment
  end

  private

  def appointment_params
    params.require(:appointment).permit(:username, :hall, :email, :city)
  end
end
