get '/teams' do
  @teams = Team.all
  erb :'teams/index'
end

get '/teams/:id' do
  @team = Team.find(params[:id])
  @top_ten_players = Ranking.where(team: @team.code).order(nerd_rank: :ASC).limit(10)
  erb :'teams/show'
end