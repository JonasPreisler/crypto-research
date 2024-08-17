class CreateProjectWallets < ActiveRecord::Migration[7.0]
  def change
    create_table :project_wallets do |t|
      t.references :project, null: false, foreign_key: true
      t.references :wallet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
