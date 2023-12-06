class Bet < ApplicationRecord
  belongs_to :user_reward, optional: true
  belongs_to :user
  belongs_to :match
  belongs_to :participation, optional: true

  enum :progress, { lost: 0, won: 1 }

  def won_bet
    if (match.winner_team == self.participation.try(:id)) || (self.participation.nil? && self.match.draw?)
      self.won!
        if self.match.funbet == true
          self.user.funbet_won_points
        else
          self.user.won_points
        end
      self.save
    end
  end
end
