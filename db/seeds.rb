Bet.destroy_all
Participation.destroy_all
Team.destroy_all
Match.destroy_all
UserReward.destroy_all
Reward.destroy_all
User.destroy_all
Squad.destroy_all

squad = Squad.create!(name: "Les Boss")
user_1 = User.create!(email: "azerty@gmail.com", password: "azerty", nickname: "Gégédu33", points_counter:300, squad: squad)
user_2 = User.create!(email: "azerto@gmail.com", password: "azerto", nickname: "MBappé", points_counter:200, squad: squad )

user_3 = User.create!(email: "azertu@gmail.com", password: "azertu", nickname: "Footix98", points_counter:450, squad: squad )
user_4 = User.create!(email: "azerti@gmail.com", password: "azerti", nickname: "AliGator", points_counter:850, squad: squad )
user_5 = User.create!(email: "azerte@gmail.com", password: "azerte", nickname: "ParieurFou", points_counter:950, squad: squad )

barcelone = Team.create!(name: "FC Barcelone", sport: "Football")
real_madrid = Team.create!(name: "Real Madrid", sport: "Football")
atlético_madrid = Team.create!(name: "Atlético Madrid", sport: "Football")
girone = Team.create!(name: "Girona FC", sport: "Football")
betis = Team.create!(name: "Real Betis", sport: "Football")
almeria = Team.create!(name: "UD Almeria", sport: "Football")
arsenal = Team.create!(name: "Arsenal FC", sport: "Football")
man_city = Team.create!(name: "Man. City", sport: "Football")
liverpool = Team.create!(name: "Liverpool FC", sport: "Football")
aston_villa= Team.create!(name: "Aston Villa ", sport: "Football")
luton_town = Team.create!(name: "Luton Town ", sport: "Football")
crystal_palace = Team.create!(name: "Crystal Palace", sport: "Football")
psg = Team.create!(name: "Paris SG", sport: "Football")
marseille = Team.create!(name: "OM", sport: "Football")
monaco = Team.create!(name: "AS Monaco", sport: "Football")
nantes = Team.create!(name: "FC Nantes", sport: "Football")
lorient = Team.create!(name: "FC Lorient", sport: "football")
rennes = Team.create!(name: "Rennes FC", sport: "Football")
sociedad = Team.create!(name: "Real Sociedad", sport: "Football")
osasuna = Team.create!(name: "Osasuna", sport: "Football")
chelsea = Team.create!(name: "Chelsea FC", sport: "Football")
brighton = Team.create!(name: "Brighton FC", sport: "Football")
man_united = Team.create!(name: "Manchester United", sport: "Football")
newcastle= Team.create!(name: "Newcastle", sport: "Football")
dortmund = Team.create!(name: "Dortmund", sport: "Football")
leverkusen = Team.create!(name: "Bayern Leverkusen", sport: "Football")


match_1 = Match.create!(sport: "Football", date: DateTime.new(2023,12,10,21,00,00), funbet: false)
match_2 = Match.create!(sport: "Football", date: DateTime.new(2023,12,9,16,15,00), funbet: false)
match_3 = Match.create!(sport: "Football", date: DateTime.new(2023,12,10,14,00,00), funbet: false)
match_4 = Match.create!(sport: "Football", date: DateTime.new(2023,12,9,18,30,00), funbet: true)
match_5 = Match.create!(sport: "Football", date: DateTime.new(2023,12,10,15,00,00),funbet: false)
match_6 = Match.create!(sport: "Football", date: DateTime.new(2023,12,9,13,30,00), funbet: false)
match_7 = Match.create!(sport: "Football", date: DateTime.new(2023,12,9,21,00,00), funbet: false)
match_8 = Match.create!(sport: "Football", date: DateTime.new(2023,12,10,21,00,00), funbet: false)
match_9 = Match.create!(sport: "Football", date: DateTime.new(2023,12,9,17,00,00), funbet: false)
match_10 = Match.create!(sport: "Football", date: DateTime.new(2023,12,2,21,00,00), funbet: false)
match_11 = Match.create!(sport: "Football", date: DateTime.new(2023,12,2,21,00,00), funbet: false)
match_12 = Match.create!(sport: "Football", date: DateTime.new(2023,12,3,20,30,00), funbet: false)
match_13 = Match.create!(sport: "Football", date: DateTime.new(2023,12,3,17,00,00), funbet: false)




participation_1 = Participation.create!(team: barcelone, match: match_1, odd: 1.47)
participation_2 = Participation.create!(team: girone, match: match_1, odd: 5.10)
participation_3 = Participation.create!(team: real_madrid, match: match_2, odd: 1.75)
participation_4 = Participation.create!(team: betis, match: match_2, odd: 4.00)
participation_5 = Participation.create!(team: atlético_madrid, match: match_3, odd: 1.20)
participation_6 = Participation.create!(team: almeria, match: match_3, odd: 9.60)
participation_7 = Participation.create!(team: arsenal, match: match_4, odd: 1.92)
participation_8 = Participation.create!(team: aston_villa, match: match_4, odd: 3.30)
participation_9 = Participation.create!(team: man_city, match: match_5, odd: 1.12)
participation_10 = Participation.create!(team: luton_town, match: match_5, odd: 14)
participation_11 = Participation.create!(team: liverpool, match: match_6, odd: 1.53)
participation_12 = Participation.create!(team: crystal_palace, match: match_6, odd: 4.95)
participation_13 = Participation.create!(team: psg, match: match_7, odd: 1.17)
participation_14 = Participation.create!(team: nantes, match: match_7, odd: 12.50)
participation_15 = Participation.create!(team: marseille, match: match_8, odd: 1.71)
participation_16 = Participation.create!(team: lorient, match: match_8, odd: 4.25)
participation_17 = Participation.create!(team: monaco, match: match_9, odd: 2.70)
participation_18 = Participation.create!(team: rennes, match: match_9, odd: 2.30)
participation_19 = Participation.create!(team: sociedad, match: match_10, odd: 1.47,score:1)
participation_20 = Participation.create!(team: osasuna, match: match_10, odd: 2.30,score:1)
participation_21 = Participation.create!(team: chelsea, match: match_11, odd: 5.10,score:3)
participation_22 = Participation.create!(team: brighton, match: match_11, odd: 4.90,score:2)
participation_23 = Participation.create!(team: newcastle, match: match_12, odd: 5.10,score:1)
participation_24 = Participation.create!(team: man_united, match: match_12, odd: 4.20,score:0)
participation_25 = Participation.create!(team: dortmund, match: match_13, odd:4.00 ,score:1)
participation_26 = Participation.create!(team: leverkusen, match: match_13, odd: 5.00,score:1)



reward_1 = Reward.create!(title: "Panenka!", description: "points doublés au prochain pari", price: 200)
reward_2 = Reward.create!(title: "Poteau rentrant", description: "+100 points au prochain pari gagné", price: 50)
reward_3 = Reward.create!(title: "Coup du chapeau", description: "+200 points", price: 250)
reward_4 = Reward.create!(title: "Tacle à la gorge", description: "points au cube", price: 350)

bet_1 = Bet.create!(user: user_1, participation: participation_19, progress: 0, match: match_10)
bet_2 = Bet.create!(user: user_2, participation: participation_20, progress: 0, match: match_10)
bet_3 = Bet.create!(user: user_1, progress: 0, match: match_11)
bet_4 = Bet.create!(user: user_2, participation: participation_21, progress: 0, match: match_11)
bet_5 = Bet.create!(user: user_2, participation: participation_23, progress: 0, match: match_12)
bet_6 = Bet.create!(user: user_1, progress: 0, match: match_13)
