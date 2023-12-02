class Reward < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true

  has_many :user_rewards
  has_many :users, through: :user_rewards
end
