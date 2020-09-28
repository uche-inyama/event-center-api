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

  private

  def appointment_params
    params.require(:appointment).permit(:username, :hall, :email, :city, :date)
  end
end
