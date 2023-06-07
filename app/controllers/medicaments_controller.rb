class MedicamentsController < ApplicationController
  def index
    @medicaments = Medicament.all
  end

  def show
    
  end

  def new
    @medicament = Medicament.new
  end

  def create

  end

  def edit

  end

  def update

  end
end
