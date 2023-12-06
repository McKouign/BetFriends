namespace :update_bets do
  desc "Enrich all users with Clearbit (async)"
  task update_all: :environment do
    matches = Match.all
    matches.each do |match|
      match.winner_team
      match.draw?
    end
    bets = Bet.all
    bets.each do |bet|
      bet.won_bet
    end
  end
end
