class AppointmentsController < ApplicationController
  def create
    @center = Center.find_by(params[:center_id])
    appointment = @center.appointments.build(appointment_params)
    if appointment.save
      render json: { appointment: appointment, status: :created }
    else
      render json: { status: 401 }
    end
  end

  def show
    appointments = Appointment.where({ user_id: params[:id] })
    render json: { appointments: appointments, status: :ok }
  end

  private

  def appointment_params
    params.require(:appointment).permit(:username, :hall, :email, :city, :date, :user_id)
  end
end
