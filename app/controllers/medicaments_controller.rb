class MedicamentsController < ApplicationController
  before_action :set_medicament, only: [:show, :edit, :update]

  def index
    @medicaments = Medicament.all
    @medicaments = Medicament.order(:id)
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

  def increment
    @medicament = Medicament.find(params[:id])
    @medicament.increment!(:stock)
    @medicament.save!
    respond_to do |format|
      format.html { redirect_to medicaments_path }
      format.json { head :no_content }
    end
  end

  def decrement
    @medicament = Medicament.find(params[:id])
    @medicament.decrement!(:stock)
    @medicament.save!
    respond_to do |format|
      format.html { redirect_to medicaments_path }
      format.json { head :no_content }
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
#   def show
#     @medicament = Medicament.find(params[:id])
#   end

#   def new
#     @medicament = Medicament.new
#   end

#   def create

#   end

#   def edit
#     @medicament = Medicament.find(params[:id])
#   end

#   def update
#     @medicament = Medicament.find(params[:id])
#     @stock_medicament = @medicament.stock
#     if @medicament.update(medicament_params)
#       redirect_to medicaments_path
#     else
#       # render: :edit
#   end

#   private

#   def medicament_params
#     params.require(:medicament).permit(:stock)
#   end
# end
