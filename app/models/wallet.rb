class Wallet < ApplicationRecord
  has_many :projects, through: :project_wallets
  validates_presence_of :address
  validates_uniqueness_of :address

  enum status: {
    unchecked: 0,
    active: 1,
    discarded: 10
  }

  scope :active, -> { where.not(status: :discarded) }

end