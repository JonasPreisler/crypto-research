class HomeController < ApplicationController

  def show
    @wallets = Wallet.active.order(created_at: :asc)
    @projects = Project.active.order(created_at: :asc)
  end

end
