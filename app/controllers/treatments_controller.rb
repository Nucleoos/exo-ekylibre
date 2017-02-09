class TreatmentsController < ApplicationController

  def new
    find_tank
    @treatment = Treatment.new
  end

  def create
    find_tank
    treatment = @tank.treatments.build(treatment_params)
    treatment.save!
    redirect_to tank_path(@tank)
  end

  private

  def find_tank
    @tank = Tank.find(params[:tank_id])
  end

  def treatment_params
    params.require(:treatment).permit(:name, :product, :comment)
  end
end
