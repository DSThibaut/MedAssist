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
    @medicaments = @medical_care.medical_care_medicaments.all
  end

  def update
    @medical_care = MedicalCare.find(params[:id])
    @medical_care_medicaments = @medical_care.medical_care_medicaments.each_with_index do |mcm, index|
      current_key = params["medical_care"]["medical_care_medicaments_attributes"].keys[index]
      mcm.update(
        medicament_id: params["medical_care"]["medical_care_medicaments_attributes"][current_key]["medicament_id"],
        dose: params["medical_care"]["medical_care_medicaments_attributes"][current_key]["dose"],
        frequence: params["medical_care"]["medical_care_medicaments_attributes"][current_key]["frequence"]
      )
    end
    if @medical_care.update(medical_care_params_update)
      redirect_to profil_path
    else
      render edit:
    end
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

  def medical_care_params_update
    params.require(:medical_care).permit(:title, :description, :pathology, :start_date, :end_date)
  end

  def medicament_params
    params.require(:medicament).permit(:name, :unit, :stock, medicament_ids: [])
  end
end
