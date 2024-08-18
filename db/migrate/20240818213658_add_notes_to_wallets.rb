class AddNotesToWallets < ActiveRecord::Migration[7.0]
  def change
    add_column :wallets, :notes, :text
  end
end
