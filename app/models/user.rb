class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  validates :nickname, presence: true, uniqueness: true

  belongs_to :squad
  has_many :user_rewards, dependent: :destroy
  has_many :rewards, through: :user_rewards
  has_many :bets

  def won_average
    (self.bets.where(progress: 'won').count / self.bets.count) * 100
  end

  def won_points
    self.points_counter += 50
    self.save
  end

  def funbet_won_points
    self.points_counter += 100
    self.save
  end

  def plat_du_pied
    self.points_counter += 60
    self.save
  end

  def poteau_rentrant
    self.points_counter += 80
    self.save
  end

  def panenka
    self.points_counter += 100
    self.save
  end

  def coup_du_chapeau
    self.points_counter += 150
    self.save
  end

end
