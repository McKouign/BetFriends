class Participation < ApplicationRecord
  belongs_to :team
  belongs_to :match
  has_many :bets
end
