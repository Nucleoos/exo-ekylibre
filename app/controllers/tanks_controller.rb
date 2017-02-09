class TanksController < ApplicationController
  def index
    @tanks = Tank.all
  end

  def new
    @tank = Tank.new
  end

  def create
    @tank = Tank.new(tank_params)
    @tank.save!
    redirect_to root_path
  end

  def show
    find_tank
    @treatments = @tank.treatments
    @transfers = @tank.transfers
  end

  private

  def tank_params
    params.require(:tank).permit(:name)
  end

  def find_tank
    @tank = Tank.find(params[:id])
  end
end
