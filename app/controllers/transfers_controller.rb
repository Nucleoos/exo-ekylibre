class TransfersController < ApplicationController
  def new
    find_tank
    @transfer = Transfer.new
  end

  def create
    find_tank
    transfer = @tank.transfers.build(transfer_params)
    transfer.save!
    redirect_to tank_path(@tank)
  end


  private

  def find_tank
    @tank = Tank.find(params[:tank_id])
  end

  def transfer_params
    params.require(:transfer).permit(:quantity)
  end
end
