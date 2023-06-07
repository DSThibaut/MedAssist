class MedicalCentersController < ApplicationController
  def index
    @medical_centers = MedicalCenter.all
  end
end
