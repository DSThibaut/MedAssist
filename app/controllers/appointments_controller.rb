class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.where(user_id: current_user.id)
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @medical_center = MedicalCenter.find(params[:medical_center_id])
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.user = current_user
    @appointment.medical_center_id = params[:medical_center_id]

    if @appointment.save!
      redirect_to appointments_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @appointment = Appointment.find(params[:id])
    @medical_center = @appointment.medical_center
  end

  def update
    @appointment = Appointment.find(params[:id])
    @appointment.update(appointment_params)
    redirect_to appointments_path
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to appointments_path
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :medical_center_id)
  end
end
