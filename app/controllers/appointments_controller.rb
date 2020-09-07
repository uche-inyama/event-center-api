class AppointmentsController < ApplicationController
  def create
    appointment = Appointment.create!(appointment_params)
    unless appointment
      render json: {
        status: :created,
        appointment: appointment
      }
    end
    render json: {
      status: 401
    }
  end

  def show
    appointment = Appointment.all
    return unless appointment
      render json: {
        status: :success,
        appointments: appointment
      }
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:username, :hall, :email, :city)
  end
  
end
