class DashboardsController < ApplicationController
  def profil
    @medical_care_medicament = MedicalCareMedicament.all
  end
end
