get '/players' do
  @top_ten_players = Ranking.order(nerd_rank: :ASC).limit(10)
  erb :'players/index'
end

get '/players/QB' do
  @top_ten_players = Ranking.where(position: 'QB').order(nerd_rank: :ASC).limit(10)
  erb :'players/index'
end

get '/players/RB' do
  @top_ten_players = Ranking.where(position: 'RB').order(nerd_rank: :ASC).limit(10)
  erb :'players/index'
end

get '/players/WR' do
  @top_ten_players = Ranking.where(position: 'WR').order(nerd_rank: :ASC).limit(10)
  erb :'players/index'
end

get '/players/TE' do
  @top_ten_players = Ranking.where(position: 'TE').order(nerd_rank: :ASC).limit(10)
  erb :'players/index'
end

get '/players/K' do
  @top_ten_players = Ranking.where(position: 'K').order(nerd_rank: :ASC).limit(10)
  erb :'players/index'
end

get '/players/DEF' do
  @top_ten_players = Ranking.where(position: 'DEF').order(nerd_rank: :ASC).limit(10)
  erb :'players/index'
end

get "/players/:id" do
  @player_rank = Ranking.find_by(player_id: params[:id])
  @player = Player.find_by(player_id: params[:id])

  erb :'players/show'
end