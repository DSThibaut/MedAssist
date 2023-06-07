class MedicamentsController < ApplicationController
  before_action :set_medicament, only: [:show, :edit, :update]

  def index
    @medicaments = Medicament.all
    @medicament = Medicament.new
  end

  def show
  end

  def new
    @medicament = Medicament.new
  end

  def create
    @medicament = Medicament.new(medicament_params)
    
    if @medicament.save
      redirect_to medicaments_path, notice: "Le médicament a été ajouté avec succès."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @medicament.update(medicament_params)
      redirect_to medicament_path(@medicament), notice: "Le médicament a été mis à jour avec succès."
    else
      render :edit
    end
  end

  private

  def set_medicament
    @medicament = Medicament.find(params[:id])
  end

  def medicament_params
    params.require(:medicament).permit(:name, :unit, :stock)
  end
end
