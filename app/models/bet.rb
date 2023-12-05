class Bet < ApplicationRecord
  belongs_to :user_reward, optional: true
  belongs_to :user
  belongs_to :match
  belongs_to :participation, optional: true

  enum :progress, { lost: 0, won: 1 }

  def won_bet
    # appeler la méthode winner_team et stocker le résultat dans une variable
    # si le vainqueur du match est égal à la participation choisie par le joueur alors le pari est gagné
    if (match.winner_team == self.participation.id) || (self.participation.nil? && self.match.draw?)
      self.won!
    # ou si le score des 2 équipes est égal et que le bet du joueur ne contient pas de participation, le pari est gagné
    end
  end
end
