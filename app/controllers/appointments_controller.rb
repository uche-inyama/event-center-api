class AppointmentsController < ApplicationController
  def create
    appointment = Appointment.create!(appointment_params)
    render json: {
      status: :created,
      appointment: appointment
    } unless appointment
      render json: {
        status: 401
    }
  end

  def show
    appointment = Appointment.all
    render json: {
      status: :success,
      appointments: appointment
    } unless appointment
  end

  private

  def appointment_params
    params.require(:appointment).permit(:username, :hall, :email, :city)
  end
end
