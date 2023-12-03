class Bet < ApplicationRecord
  belongs_to :user_reward, optional: true
  belongs_to :user
  belongs_to :match
  belongs_to :participation, optional: true

  enum :progress, { lost: 0, won: 1 }

  
end
