class MedicalCaresController < ApplicationController
  def new
    @medical_care = MedicalCare.new
    @medical_care.medical_care_medicaments.build
  end

  def create
    @medical_care = MedicalCare.new(medical_care_params)
    @medical_care.user_id = current_user.id
    if @medical_care.save
      redirect_to profil_path
    else
      render :new
    end
  end

  def edit
    @medical_care = MedicalCare.find(params[:id])
  end

  def update
    @medical_care = MedicalCare.find(params[:id])
    @medical_care.update(medical_care_params)

    redirect_to profil_path
  end

  def destroy
    @medical_care = MedicalCare.find(params[:id])
    @medical_care.destroy

    redirect_to profil_path
  end

  private

  def medical_care_params
    params.require(:medical_care).permit(:title, :description, :pathology, :start_date, :end_date, medical_care_medicaments_attributes: [:frequence, :medicament_id, :dose])
  end
end
