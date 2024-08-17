class HomeController < ApplicationController

  def show
    @wallets = Wallet.active.order(created_at: :desc)
    @projects = Project.active.order(created_at: :desc)
  end

end
