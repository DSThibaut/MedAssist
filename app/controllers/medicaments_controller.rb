class MedicamentsController < ApplicationController
  def index
    @medicaments = Medicament.all
  end
end
