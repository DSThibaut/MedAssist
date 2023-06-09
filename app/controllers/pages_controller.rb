class PagesController < ApplicationController
  before_action :authenticate_user!
  helper_method :rappel_medicament, :rappel_rdv

  def home
     @appointments = Appointment.where(user_id: current_user.id)
    if params[:date].present?
      @date_selected = Date.parse(params[:date])
    else
      @date_selected = Date.current
   end

  end

  def rappel_rdv
    date = Date.today
    rendez_vous = []
    rdv_today = Appointment.where(user_id: current_user)
    rdv_today.each do |rdv_unit|
      date_string = rdv_unit.date
      reel_date = date_string.strftime('%a,%e,%b,%Y')
      if reel_date == date
      rendez_vous << date_string.strftime('%a,%e,%b,%Y')

      #   centre_medical = MedicalCenter.find_by(medical_center_id: rdv_unit.medical_center_id)
      #   rendez_vous << centre_medical.name
      #   rendez_vous << centre_medical.address
      #   rendez_vous << rdv_unit.date
      end
    end
    return rendez_vous
  end

  def rappel_medicament
    date = Date.today
    medicament_jour = {}
    current_user_treatments = MedicalCare.where(user_id: current_user)
    current_user_treatments.each do |traitement|
      if traitement.start_date < date && traitement.end_date > date
        current_user_joint_table = MedicalCareMedicament.where(medical_care_id: traitement.id)
        current_user_joint_table.each do |joint_table|
          medicament_jour["#{traitement.title}"] = traitement.title
          medicament = Medicament.find_by(id: joint_table.medicament_id)
          name = medicament.name
          name = {}
          name["medicament"] = medicament.name
          name["dose"] = joint_table.dose
          name["frequence"] = joint_table.frequence
          medicament_jour["#{medicament.name}"] = name
        end
      end
    end
    return medicament_jour
  end
end
