class Wallet < ApplicationRecord
  has_many :projects, through: :project_wallets
  validates_presence_of :address

  enum status: {
    new: 0,
    active: 1,
    discarded: 10
  }

  scope :active, -> { where.not(status: :discarded) }

end