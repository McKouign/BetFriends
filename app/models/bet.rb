class Bet < ApplicationRecord
  belongs_to :user_reward, optional: true
  belongs_to :user
  belongs_to :match
  belongs_to :participation, optional: true

  enum :progress, { lost: 0, won: 1 }

  def won_bet
    winner_team = self.match.match_winner
    if
      winner_team == self.participation.id
      return self.won!
    else
      return self.lost!
  end
end
