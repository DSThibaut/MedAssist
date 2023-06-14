class PagesController < ApplicationController
  before_action :authenticate_user!

  def home
    @title = "Accueil"
    if params[:date].present?
      @date_selected = Date.parse(params[:date])
    else
      @date_selected = Date.current
    end

    @traitements = MedicalCare.where( "user_id = ? AND start_date <= ? AND end_date >= ?", current_user.id, @date_selected.strftime("%m/%d/%Y"), @date_selected.strftime("%m/%d/%Y") )
    rdv = Appointment.where(user_id: current_user)
    @appointments = []
    rdv.each do |element|
      date = element.date.strftime("%m/%d/%Y")
      @appointments << element if @date_selected.strftime("%m/%d/%Y") == date
    end
  end
end
