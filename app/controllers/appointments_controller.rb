class AppointmentsController < ApplicationController
  def create
    @center = Center.find_by(params[:center_id])
    appointment = @center.appointments.build(appointment_params)
    if appointment.save
      render json: {
        status: :created,
        appointment: appointment
      } else
          render json: {
            status: 401
          }
    end
  end

  def show
    appointments = Appointment.where({ user_id: params[:id] })
    render json: {
      status: :ok,
      appointments: appointments
    }
  end

  private
  
  def appointment_params
    params.require(:appointment).permit(:username, :hall, :email, :city, :date, :user_id)
  end
end
