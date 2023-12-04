Bet.destroy_all
Participation.destroy_all
Team.destroy_all
Match.destroy_all
UserReward.destroy_all
Reward.destroy_all
User.destroy_all
Squad.destroy_all

squad = Squad.create!(name: "Les Boss")
user_1 = User.create!(email: "azerty@gmail.com", password: "azerty", nickname: "Gégédu33",points_counter:300, squad: squad)
user_2 = User.create!(email: "azerto@gamil.com", password: "azerto", nickname: "MBappé", squad: squad )

barcelone = Team.create!(name: "FC Barcelone", sport: "Football")
madrid = Team.create!(name: "Real Madrid", sport: "Football")
psg = Team.create!(name: "PSG", sport: "Football")
om = Team.create!(name: "OM", sport: "Football")
lorient = Team.create!(name: "FC Lorient", sport: "Football")
rennes = Team.create!(name: "Rennes FC", sport: "Football")
los_angeles = Team.create!(name: "Los Angeles Dodgers", sport: "Baseball")
boston = Team.create!(name: "Boston Red Sox", sport: "Baseball")

match_1 = Match.create!(sport: "Football", date: Date.tomorrow, funbet: false)
match_2 = Match.create!(sport: "Football", date: Date.today, funbet: false)
match_3 = Match.create!(sport: "Football", date: Date.yesterday, funbet: false)
match_4 = Match.create!(sport: "baseball", date: Date.tomorrow, funbet: true)
match_5 = Match.create!(sport: "baseball", date: Date.tomorrow, funbet: false)

participation_1 = Participation.create!(team: barcelone, match: match_1, odd: 1.7)
participation_2 = Participation.create!(team: madrid, match: match_1, odd: 2)
participation_1 = Participation.create!(team: psg, match: match_2, odd: 2)
participation_2 = Participation.create!(team: om, match: match_2, odd: 1.8)
participation_1 = Participation.create!(team: lorient, match: match_3, odd: 3)
participation_2 = Participation.create!(team: rennes, match: match_3, odd: 2)
participation_1 = Participation.create!(team: los_angeles, match: match_4, odd: 1.8)
participation_2 = Participation.create!(team: boston, match: match_4, odd: 2)
participation_1 = Participation.create!(team: los_angeles, match: match_5, odd: 1.8)
participation_2 = Participation.create!(team: boston, match: match_5, odd: 2)

reward_1 = Reward.create!(title: "Panenka!", description: "points doublés au prochain pari", price: 200)
reward_2 = Reward.create!(title: "Poteau rentrant", description: "+100 points au prochain pari gagné", price: 50)
reward_3 = Reward.create!(title: "Coup du chapeau", description: "+200 points", price: 250)
reward_4 = Reward.create!(title: "Tacle à la gorge", description: "points au cube", price: 350)

user_reward_1 = UserReward.create!(reward: reward_1, target: user_1, progress: 0, user: user_1)
user_reward_2 = UserReward.create!(reward: reward_2, target: user_1, progress: 0, user: user_1)
user_reward_3 = UserReward.create!(reward: reward_3, target: user_1, progress: 0, user: user_1)
user_reward_4 = UserReward.create!(reward: reward_4, target: user_2, progress: 0, user: user_2)


bet_1 = Bet.create!(user: user_1, participation: participation_1, progress: 0, match: match_1)
bet_2 = Bet.create!(user: user_2, participation: participation_1, progress: 0, match: match_3)
bet_3 = Bet.create!(user: user_1, progress: 0, match: match_2)
bet_4 = Bet.create!(user: user_2, participation: participation_1, progress: 0, match: match_3)
