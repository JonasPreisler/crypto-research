class AddStatusToWallets < ActiveRecord::Migration[7.0]
  def change
    add_column :wallets, :status, :integer, default: 0
  end
end
