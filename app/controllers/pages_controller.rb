class PagesController < ApplicationController
  before_action :authenticate_user!
  helper_method :rappel_medicament

  def home
     @appointments = Appointment.where(user_id: current_user.id)
    if params[:date].present?
      @date_selected = Date.parse(params[:date])
    else
      @date_selected = Date.current
   end

  end

  def rappel_medicament
    date = Date.today.strftime("%m/%d/%Y")
    medicament_jour = []
    current_user_treatments = MedicalCare.where(user_id: current_user)
    current_user_treatments.each do |traitement|
      if traitement.start_date.strftime("%m/%d/%Y") < date && traitement.end_date.strftime("%m/%d/%Y") > date
        current_user_joint_table = MedicalCareMedicament.where(medical_care_id: traitement.id)
        current_user_joint_table.each do |joint_table|
          hash_joint_table = {}
          hash_joint_table["#{traitement.title}"] = traitement.title
          medicament = Medicament.find_by(id: joint_table.medicament_id)
          hash_joint_table["name"] = medicament.name
          hash_joint_table["dose"] = joint_table.dose
          hash_joint_table["frequence"] = joint_table.frequence
          medicament_jour << hash_joint_table
        end
      end
    end
    return medicament_jour
  end
end
