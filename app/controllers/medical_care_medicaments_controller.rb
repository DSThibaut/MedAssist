class MedicalCareMedicamentsController < ApplicationController
  def new
    @medical_care = MedicalCare.find(params[:medical_care_id])
    @medical_care_medicament = MedicalCareMedicament.new
  end

  def create
    @medical_care = MedicalCare.find(params[:medical_care_id])
    @medical_care_medicament = MedicalCareMedicament.new(medical_care_medicament_params)
    @medical_care_medicament.medical_care = @medical_care
    if @medical_care_medicament.save
      redirect_to profil_path
    else
      render :new
    end
  end

  def edit
    @medical_care = MedicalCare.find(params[:medical_care_id])
    @medical_care_medicament = MedicalCareMedicament.find(params[:id])
  end

  def update
    @medical_care = MedicalCare.find(params[:medical_care_id])
    @medical_care_medicament = MedicalCareMedicament.find(params[:id])
    @medical_care_medicament.update(medical_care_medicament_params)

    redirect_to profil_path
  end

  def destroy
    @medical_care = MedicalCareMedicament.find(params[:id])
    @medical_care.destroy

    redirect_to profil_path
  end

  def taken
    @medical_care_medicament = MedicalCareMedicament.find(params[:medical_care_medicament_id])
    if @medical_care_medicament.update(params.require(:taken).permit!)
      redirect_to root_path, notice: "Traitement pris"
    else
      redirect_to root_path, notice: "Erreur"

    end
  end

  private

  def medical_care_medicament_params
    params.require(:medical_care_medicament).permit(:frequence, :medicament_id, :dose,:taken, :morning, :noon, :evening)
  end
end
