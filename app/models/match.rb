class Match < ApplicationRecord
  validates :sport, presence: true
  validates :date, presence: true
  #validates :funbet, presence: true

  has_many :bets
  has_many :teams, through: :participations
  has_many :participations
end
