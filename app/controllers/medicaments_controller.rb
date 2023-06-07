class MedicamentsController < ApplicationController
  def index
    @medicaments = Medicament.all
  end

  def show
    @medicament = Medicament.find(params[:id])
  end

  def new
    @medicament = Medicament.new
  end

  def create

  end

  def edit
    @medicament = Medicament.find(params[:id])
  end

  # def update
  #   @medicament = Medicament.find(params[:id])
  #   @stock_medicament = @medicament.stock
  #   if @medicament.update(medicament_params)
  #     redirect_to medicaments_path
  #   else
  #     # render: :edit
  # end

  private

  def medicament_params
    params.require(:medicament).permit(:stock)
  end
end
