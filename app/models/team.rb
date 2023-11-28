class Team < ApplicationRecord
  validates :name, presence: true
  validates :sport, presence: true

  has_many :matches, through: :participations
end
