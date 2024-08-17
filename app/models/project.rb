class Project < ApplicationRecord
  has_many :wallets, through: :project_wallets
  validates_presence_of :pair

  enum status: {
    unchecked: 0,
    active: 1,
    discarded: 10
  }

  scope :active, -> { where.not(status: :discarded) }
  
end