Bet.destroy_all
Participation.destroy_all
Team.destroy_all
Match.destroy_all
UserReward.destroy_all
Reward.destroy_all
User.destroy_all
Squad.destroy_all

squad = Squad.create!(name: "Les Boss")
user_1 = User.create!(email: "azertu@gmail.com", password: "azertu://", nickname: "Footix98", squad: squad )
user_2 = User.create!(email: "azerto@gmail.com", password: "azerto://", nickname: "MBappé", squad: squad )
user_3 = User.create!(email: "azerty@gmail.com", password: "azerti://", nickname: "Gégédu33", squad: squad)
user_4 = User.create!(email: "aligator@gmail.com", password: "azerty://", nickname: "AliGator", squad: squad )
user_5 = User.create!(email: "azerte@gmail.com", password: "azerte://", nickname: "ParieurFou", squad: squad )



barcelone = Team.create!(name: "FC Barcelone", sport: "Football", logo: "logo-club/barcelone.png")
real_madrid = Team.create!(name: "Real Madrid", sport: "Football", logo: "logo-club/real-madrid.png")
atletico_madrid = Team.create!(name: "Atlético Madrid", sport: "Football", logo: "logo-club/atletico-madrid.png")
girone = Team.create!(name: "Girona FC", sport: "Football", logo: "logo-club/girone.png")
betis = Team.create!(name: "Real Betis", sport: "Football", logo: "logo-club/betis.png")
almeria = Team.create!(name: "UD Almeria", sport: "Football", logo: "logo-club/almeria.png")
arsenal = Team.create!(name: "Arsenal FC", sport: "Football", logo: "logo-club/arsenal.png")
man_city = Team.create!(name: "Man. City", sport: "Football", logo: "logo-club/man-city.png")
liverpool = Team.create!(name: "Liverpool FC", sport: "Football", logo: "logo-club/liverpool.png")
aston_villa= Team.create!(name: "Aston Villa ", sport: "Football", logo: "logo-club/aston.png")
luton_town = Team.create!(name: "Luton Town ", sport: "Football", logo: "logo-club/luton.png")
crystal_palace = Team.create!(name: "Crystal Palace", sport: "Football", logo: "logo-club/crystal-palace.png")
psg = Team.create!(name: "Paris SG", sport: "Football", logo: "logo-club/psg.png")
marseille = Team.create!(name: "OM", sport: "Football", logo: "logo-club/om.png")
monaco = Team.create!(name: "AS Monaco", sport: "Football", logo: "logo-club/monaco.png")
nantes = Team.create!(name: "FC Nantes", sport: "Football", logo: "logo-club/nantes.png")
lorient = Team.create!(name: "FC Lorient", sport: "football", logo: "logo-club/lorient.png")
rennes = Team.create!(name: "Rennes FC", sport: "Football", logo: "logo-club/rennes.png")
grenade = Team.create!(name: "Grenade", sport: "Football")
naples = Team.create!(name: "Naples", sport: "Football")
chelsea = Team.create!(name: "Chelsea FC", sport: "Football")
le_havre = Team.create!(name: "Le Havre FC", sport: "Football")
man_united = Team.create!(name: "Man. United", sport: "Football")
inter = Team.create!(name: "Inter Milan", sport: "Football")
lens = Team.create!(name: "RC Lens", sport: "Football")
lyon = Team.create!(name: "OL", sport: "Football")
hobart = Team.create!(name: "Hobart Hurricanes", sport: "Cricket", logo: "logo-club/hobart.png")
sydney = Team.create!(name: "Sydney Sixers", sport: "Cricket", logo: "logo-club/sydney.png")
packers = Team.create!(name: "Packers", sport: "NFL")
chiefs = Team.create!(name: "Chiefs", sport: "NFL")


match_1 = Match.create!(sport: "Football", date: DateTime.new(2023,12,10,21,00,00), funbet: false)
match_2 = Match.create!(sport: "Football", date: DateTime.new(2023,12,9,16,15,00), funbet: false)
match_3 = Match.create!(sport: "Football", date: DateTime.new(2023,12,10,14,00,00), funbet: false)
match_4 = Match.create!(sport: "Football", date: DateTime.new(2023,12,9,18,30,00), funbet: false)
match_5 = Match.create!(sport: "Football", date: DateTime.new(2023,12,10,15,00,00),funbet: false)
match_6 = Match.create!(sport: "Football", date: DateTime.new(2023,12,9,13,30,00), funbet: false)
match_7 = Match.create!(sport: "Football", date: DateTime.new(2023,12,9,21,00,00), funbet: false)
match_8 = Match.create!(sport: "Football", date: DateTime.new(2023,12,10,21,00,00), funbet: false)
match_9 = Match.create!(sport: "Football", date: DateTime.new(2023,12,9,17,00,00), funbet: false)
match_10 = Match.create!(sport: "Football", date: DateTime.new(2023,12,2,21,00,00), funbet: false)
match_11 = Match.create!(sport: "Football", date: DateTime.new(2023,12,2,21,00,00), funbet: false)
match_12 = Match.create!(sport: "Football", date: DateTime.new(2023,12,3,20,30,00), funbet: false)
match_13 = Match.create!(sport: "Football", date: DateTime.new(2023,12,3,17,00,00), funbet: false)
match_14 = Match.create!(sport: "Football", date: DateTime.new(2023,12,3,21,00,00), funbet: false)
match_15 = Match.create!(sport: "Football", date: DateTime.new(2023,12,3,21,00,00), funbet: false)
match_16 = Match.create!(sport: "Football", date: DateTime.new(2023,12,5,20,30,00), funbet: false)
match_17 = Match.create!(sport: "Football", date: DateTime.new(2023,12,6,17,00,00), funbet: false)
match_18 = Match.create!(sport: "Football", date: DateTime.new(2023,12,6,17,00,00), funbet: false)
match_19 = Match.create!(sport: "NFL", date: DateTime.new(2023,12,4,10,00,00), funbet: true)
match_20 = Match.create!(sport: "Cricket", date: DateTime.new(2023,12,11,9,15,00), funbet: true)



participation_1 = Participation.create!(team: barcelone, match: match_1, odd: 1.47)
participation_2 = Participation.create!(team: girone, match: match_1, odd: 5.10)
participation_3 = Participation.create!(team: real_madrid, match: match_2, odd: 1.75)
participation_4 = Participation.create!(team: betis, match: match_2, odd: 4.00)
participation_5 = Participation.create!(team: atletico_madrid, match: match_3, odd: 1.20)
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
participation_19 = Participation.create!(team: lens, match: match_10, odd: 1.47,score: 3)
participation_20 = Participation.create!(team: lyon, match: match_10, odd: 2.30,score: 2)
participation_21 = Participation.create!(team: marseille, match: match_12, odd: 5.10,score: 2)
participation_22 = Participation.create!(team: rennes, match: match_12, odd: 4.90,score: 0)
participation_23 = Participation.create!(team: le_havre, match: match_13, odd: 5.10,score: 0)
participation_24 = Participation.create!(team: psg, match: match_13, odd: 4.20,score: 2)
participation_25 = Participation.create!(team: man_united, match: match_17, odd: 4.00 ,score: 2)
participation_26 = Participation.create!(team: chelsea, match: match_17, odd: 5.00,score: 1)
participation_31 = Participation.create!(team: aston_villa, match: match_18, odd: 4.90,score: 1)
participation_32 = Participation.create!(team: man_city, match: match_18, odd: 5.10,score: 0)
participation_33 = Participation.create!(team: luton_town, match: match_16, odd: 4.20,score: 3)
participation_34 = Participation.create!(team: arsenal, match: match_16, odd: 4.00 ,score: 4)
participation_35 = Participation.create!(team: real_madrid, match: match_11, odd: 5.00,score: 2)
participation_36 = Participation.create!(team: grenade, match: match_11, odd: 4.90,score: 0)
participation_37 = Participation.create!(team: barcelone, match: match_14, odd: 5.10,score: 1)
participation_38 = Participation.create!(team: atletico_madrid, match: match_14, odd: 4.20,score: 0)
participation_39 = Participation.create!(team: naples, match: match_15, odd: 4.00 ,score: 0)
participation_40 = Participation.create!(team: inter, match: match_15, odd: 5.00,score: 3)

participation_27 = Participation.create!(team: hobart, match: match_20, odd: 5.10)
participation_28 = Participation.create!(team: sydney, match: match_20, odd: 4.20)
participation_29 = Participation.create!(team: packers, match: match_19, odd: 4.00 ,score: 27)
participation_30 = Participation.create!(team: chiefs, match: match_19, odd: 5.00,score: 19)



reward_1 = Reward.create!(title: "Plat du pied", description: "+10 points supplémentaires au prochain pari gagné", price: 100)
reward_2 = Reward.create!(title: "Poteau rentrant", description: "+30 points supplémentaires au prochain pari gagné", price: 150)
reward_3 = Reward.create!(title: "Panenka!", description: "Points x2 au prochain pari gagné", price: 300)
reward_4 = Reward.create!(title: "Coup du chapeau", description: "Points x3 au prochain pari gagné", price: 500)

bet_1 = Bet.create!(user: user_1, match: match_10)
bet_2 = Bet.create!(user: user_1, participation: participation_35, match: match_11)
bet_3 = Bet.create!(user: user_1, participation: participation_21, match: match_12)
bet_4 = Bet.create!(user: user_1, match: match_13)
bet_5 = Bet.create!(user: user_1, participation: participation_38, match: match_14)
bet_6 = Bet.create!(user: user_1, participation: participation_40, match: match_15)
bet_7 = Bet.create!(user: user_1, participation: participation_34, match: match_16)
bet_8 = Bet.create!(user: user_1, match: match_17)
bet_9 = Bet.create!(user: user_1, match: match_18)
bet_10 = Bet.create!(user: user_1, participation: participation_30, match: match_19)

bet_11 = Bet.create!(user: user_2, participation: participation_20, match: match_10)
bet_12 = Bet.create!(user: user_2, participation: participation_35, match: match_11)
bet_13 = Bet.create!(user: user_2, participation: participation_21, match: match_12)
bet_14 = Bet.create!(user: user_2, match: match_13)
bet_15 = Bet.create!(user: user_2, participation: participation_38, match: match_14)
bet_16 = Bet.create!(user: user_2, participation: participation_40, match: match_15)
bet_17 = Bet.create!(user: user_2, participation: participation_34, match: match_16)
bet_18 = Bet.create!(user: user_2, match: match_17)
bet_19 = Bet.create!(user: user_2, match: match_18)
bet_20 = Bet.create!(user: user_2, participation: participation_29, match: match_19)

bet_21 = Bet.create!(user: user_3, match: match_10)
bet_22 = Bet.create!(user: user_3, participation: participation_36, match: match_11)
bet_23 = Bet.create!(user: user_3, match: match_12)
bet_24 = Bet.create!(user: user_3, match: match_13)
bet_25 = Bet.create!(user: user_3, participation: participation_38, match: match_14)
bet_26 = Bet.create!(user: user_3, match: match_15)
bet_27 = Bet.create!(user: user_3, participation: participation_34, match: match_16)
bet_28 = Bet.create!(user: user_3, match: match_17)
bet_29 = Bet.create!(user: user_3, match: match_18)
bet_30 = Bet.create!(user: user_3, participation: participation_30, match: match_19)

bet_31 = Bet.create!(user: user_4, participation: participation_19, match: match_10)
bet_32 = Bet.create!(user: user_4, participation: participation_35, match: match_11)
bet_33 = Bet.create!(user: user_4, participation: participation_22, match: match_12)
bet_34 = Bet.create!(user: user_4, participation: participation_24, match: match_13)
bet_35 = Bet.create!(user: user_4, match: match_14)
bet_36 = Bet.create!(user: user_4, participation: participation_39, match: match_15)
bet_37 = Bet.create!(user: user_4, participation: participation_34, match: match_16)
bet_38 = Bet.create!(user: user_4, match: match_17)
bet_29 = Bet.create!(user: user_4, participation: participation_32, match: match_18)
bet_40 = Bet.create!(user: user_4, participation: participation_30, match: match_19)

bet_41 = Bet.create!(user: user_5, match: match_10)
bet_42 = Bet.create!(user: user_5, participation: participation_35, match: match_11)
bet_43 = Bet.create!(user: user_5, participation: participation_21, match: match_12)
bet_44 = Bet.create!(user: user_5, participation: participation_24, match: match_13)
bet_45 = Bet.create!(user: user_5, participation: participation_38, match: match_14)
bet_46 = Bet.create!(user: user_5, participation: participation_40, match: match_15)
bet_47 = Bet.create!(user: user_5, participation: participation_34, match: match_16)
bet_48 = Bet.create!(user: user_5, match: match_17)
bet_49 = Bet.create!(user: user_5, match: match_18)
bet_50 = Bet.create!(user: user_5, participation: participation_29, match: match_19)
