Bet.destroy_all
Participation.destroy_all
Team.destroy_all
Match.destroy_all
User.destroy_all
Squad.destroy_all

squad = Squad.create!(name: "Les Boss")
user_1 = User.create!(email: "azerty@gamil.com", password: "azerty", nickname: "Gégédu33", squad: squad)
user_2 = User.create!(email: "azerto@gamil.com", password: "azerto", nickname: "MBappé", squad: squad )

barcelone = Team.create!(name: "FC Barcelone", sport: "Football")
madrid = Team.create!(name: "Real Madrid", sport: "Football")

match = Match.create!(sport: "Football", date: Date.today, funbet: false)

participation_1 = Participation.create!(team: barcelone, match: match, odd: 2.15)
participation_2 = Participation.create!(team: madrid, match: match, odd: 1.80)

reward_1 = Reward.create!(title: "double tes points", description: "points doublés au prochain pari", price: 200)
reward_2 = Reward.create!(title: "+100 points", description: "+100 points au prochain pari gagné", price: 50)

user_reward_1 = UserReward.create!(reward: reward_1, target: user_1, progress: 0, user: user_1)
user_reward_2 = UserReward.create!(reward: reward_2, target: user_2, progress: 0, user: user_2)

bet_1 = Bet.create!(user: user_1, participation: participation_1, progress: 0, match: match, user_reward: user_reward_1)
bet_2 = Bet.create!(user: user_2, participation: participation_2, progress: 0, match: match, user_reward: user_reward_2)
