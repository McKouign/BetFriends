class Bet < ApplicationRecord
  belongs_to :user_reward, optional: true
  belongs_to :user
  belongs_to :match
  belongs_to :participation, optional: true

  enum :progress, { lost: 0, won: 1 }

  def won_bet
    if (match.winner_team == self.participation.try(:id)) || (self.participation.nil? && self.match.draw?)
      self.won!
      case
        when self.match.funbet == true
          self.user.funbet_won_points
        when self.match.funbet == false && self.user_reward.present?
          if self.user_reward.reward.title.include? "Plat du pied"
            self.user.plat_du_pied
          elsif self.user_reward.reward.title.include? "Poteau rentrant"
            self.user.poteau_rentrant
          elsif self.user_reward.reward.title.include? "Panenka!"
            self.user.panenka
          else self.user_reward.reward.title.include? "Coup du chapeau"
            self.user.coup_du_chapeau
          end
        else
          self.user.won_points
      end

    end
  end
end
