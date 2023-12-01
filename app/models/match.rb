class Match < ApplicationRecord
  validates :sport, presence: true
  validates :date, presence: true
  #validates :funbet, presence: true

  has_many :bets
  has_many :teams, through: :participations
  has_many :participations

  def favori_participation
    self.participations.find_by(odd: self.participations.map(&:odd).min)
  end

  def outsider_participation
    self.participations.find_by(odd: self.participations.map(&:odd).max)
  end

end
