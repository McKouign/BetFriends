class Match < ApplicationRecord
  validates :sport, presence: true
  validates :date, presence: true
  #validates :funbet, presence: true

  has_many :bets
  has_many :teams, through: :participations
  has_many :participations


  def winner_team
    if self.participations.first.score != self.participations.last.score
      self.participations.find_by(score: self.participations.map(&:score).max).id
    end
  end

  def draw?
    self.participations.first.score == self.participations.last.score
  end

end
