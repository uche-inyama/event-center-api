class AppointmentsController < ApplicationController
  def create
    appointment = Appointment.create!(appointment_params)
    unless appointment
      render json: {
        status: 401
      }
    else
      render json: {
        status: :created,
        appointment: appointment
      }
    end
  end

  def show
    appointment = Appointment.all
    return render json: {
      status: :success,
      appointments: appointment
    } unless appointment  
  end

  private

  def appointment_params
    params.require(:appointment).permit(:username, :hall, :email, :city)
  end
end
