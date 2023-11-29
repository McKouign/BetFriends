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

match_1 = Match.create!(sport: "Football", date: Date.today, funbet: false)
match_2 = Match.create!(sport: "Football", date: Date.today, funbet:false)
match_3 = Match.create!(sport:"Football", date: Date.today, funbet:false )
match_4 = Match.create!(sport:"Football", date: Date.today, funbet:false )
match_5 = Match.create!(sport:"Football", date: Date.today, funbet:false )


participation_1 = Participation.create!(team: barcelone, match: match_1, odd: 2.15, score: 1)
participation_2 = Participation.create!(team: madrid, match: match_1, odd: 1.80, score: 0)
#participation_3 = Participation.create!(team: bayern, match: match_2, odd: 2.5)
#participation_4 = Participation.create!(team: city, match: match_2, odd: 1.30)
#participation_5 = Participation.create!(team: chelsea, match: match_3, odd: 2.80)

reward_1 = Reward.create!(title: "double tes points", description: "points doublés au prochain pari", price: 200)
reward_2 = Reward.create!(title: "+100 points", description: "+100 points au prochain pari gagné", price: 50)

user_reward_1 = UserReward.create!(reward: reward_1, target: user_1, progress: 0, user: user_1)
user_reward_2 = UserReward.create!(reward: reward_2, target: user_2, progress: 0, user: user_2)

bet_1 = Bet.create!(user: user_1, participation: participation_1, progress: 0, match: match_1, user_reward: user_reward_1)
bet_2 = Bet.create!(user: user_2, participation: participation_2, progress: 0, match: match_1, user_reward: user_reward_2)
