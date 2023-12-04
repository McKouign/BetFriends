class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true, uniqueness: true

  belongs_to :squad
  has_many :user_rewards, dependent: :destroy
  has_many :rewards, through: :user_rewards
  has_many :bets

  def won_points
    self.points_counter += 50
  end

  def won_average
    won_average = (self.bets.where(progress: 'won').count / self.bets.count) * 100
    return won_average
  end
end
