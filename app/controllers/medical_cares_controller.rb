class MedicalCaresController < ApplicationController
  def new
    @medical_care = MedicalCare.new
    @medical_care.medical_care_medicaments.build
  end

  def create
    @medical_care = MedicalCare.new(medical_care_params)
    @medical_care.user_id = current_user.id
    @medical_care.save!
    redirect_to profil_path
  end

  private

  def medical_care_params
    params.require(:medical_care).permit(:title, :description, :pathology, medical_care_medicaments_attributes: [:frequence, :dose, :start_date, :end_date, :medicament_id])
  end
end
