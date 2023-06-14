class MedicalCentersController < ApplicationController
  def index
    @title = "Nouveau RDV"
    @medical_centers = MedicalCenter.all
  end
end
