class WalletsController < ApplicationController

  def create
    Wallet.create(params[:wallet].permit!)
    redirect_to root_path
  end

  def update
    wallet = Wallet.find(params[:id])
    wallet.update(params[:wallet].permit!)
    redirect_to root_path
  end


end