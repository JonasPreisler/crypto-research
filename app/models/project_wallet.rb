class ProjectWallet < ApplicationRecord
  belongs_to :project
  belongs_to :wallet
end