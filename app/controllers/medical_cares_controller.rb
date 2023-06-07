class MedicalCaresController < ApplicationController
  def new
    @medical_care = MedicalCare.new
    @medical_care.medical_care_medicaments.build
  end

  def create
    @medical_care = MedicalCare.new(medical_care_params)
    @medical_care.user_id = current_user.id
    raise
    @medical_care.save

  end

  private

  def medical_care_params
  params.require(:medical_care).permit(:title, :description, :pathology, medical_care_medicaments_attributes: [:frequence, :medicament_id])
  end
end
