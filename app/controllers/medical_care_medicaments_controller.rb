class MedicalCareMedicamentsController < ApplicationController
  def edit
    @medical_care_medicament = MedicalCareMedicament.find(params[:id])
  end

  def update

    @medical_care_medicament = MedicalCareMedicament.find(params[:id])
    @medical_care_medicament.update(medical_care_medicament_params)

    redirect_to profil_path
  end

  private

  def medical_care_medicament_params
    params.require(:medical_care_medicament).permit(:frequence, :medicament_id, :dose)
  end
end
