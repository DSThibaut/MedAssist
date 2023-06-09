class DashboardsController < ApplicationController
  def profil
    @medical_care_medicament = MedicalCareMedicament.all
    @medical_cares = MedicalCare.all
  end
end
