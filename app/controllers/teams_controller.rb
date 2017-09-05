get '/teams' do
  @teams = Team.all
  erb :'teams/index'
end