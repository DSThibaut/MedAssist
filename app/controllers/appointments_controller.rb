class AppointmentsController < ApplicationController
  def index
    @hide_navbar = true
    @appointments = Appointment.where(user_id: current_user.id)
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @hide_navbar = true
    @medical_center = MedicalCenter.find(params[:medical_center_id])
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.user = current_user
    @appointment.medical_center_id = params[:medical_center_id]
    @appointment.update(date: @appointment.date + appointment_params[:hour].to_i.hour + appointment_params[:minutes].to_i.minutes)

    if @appointment.save!
      redirect_to appointments_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @hide_navbar = true
    @appointment = Appointment.find(params[:id])
    @medical_center = @appointment.medical_center
  end

  def update
    @appointment = Appointment.find(params[:id])
    date = Date.parse(params[:appointment][:date])
    @appointment.update!(date: date + params[:appointment][:hour].to_i.hour + params[:appointment][:minutes].to_i.minutes)
    redirect_to appointments_path
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to appointments_path
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :medical_center_id, :hour, :minutes)
  end
end
