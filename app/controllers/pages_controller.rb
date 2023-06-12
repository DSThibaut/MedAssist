class PagesController < ApplicationController
  before_action :authenticate_user!
  helper_method :dose

  def home
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

  def dose(element)
    time = Time.now
    current_time = time.to_fs(:time)
    medication = (element.dose.to_i)/3
    case
    when current_time < "12:00"
      return "Prise de la matinée #{medication} #{element.medicament.unit} "
    when current_time >= "12:00" && current_time < "16:00"
      return "Prise du déjeuner #{medication} #{element.medicament.unit}"
    when current_time >= "16:00"
      return "Prise du soir #{medication} #{element.medicament.unit}"
    end
  end
end
