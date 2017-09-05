Team.destroy_all
Player.destroy_all
Ranking.destroy_all
WeeklyRanking.destroy_all

teams = FFNerd.teams.map do |team|
  team.to_h
end

teams.each do |team|
  Team.create!(team)
end

players = FFNerd.players.map do |player|
  player.to_h
end

players.each do |player|
  # player[:player_id] = player[:player_id].to_i
  Player.create!(player)
end

rankings = FFNerd.ppr_draft_rankings.map do |ranking|
  ranking.to_h
end

rankings.each do |ranking|
  Ranking.create!(ranking)
end

weekly_rankings = []
positions = %w(QB RB WR TE K DEF)
weeks = 17
weeks.times do |week|
  positions.each do |position|
    FFNerd.weekly_rankings(position, (week+1)).each do |weekly_rank|
      next if weekly_rank == nil
      WeeklyRanking.create!(weekly_rank.to_h)
    end
  end
end