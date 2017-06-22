#app.rb
require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:Player_1]), Player.new(params[:Player_2]))
    redirect to '/play'
  end

  get '/play' do
    @player1 = $game.player1.player_name
    @player2 = $game.player2.player_name
    @p1_health = $game.player1.health
    @p2_health = $game.player2.health
    erb(:play)
  end

  get '/attack' do
    @player1 = $game.player1.player_name
    @player2 = $game.player2.player_name
    $game.attack($game.player2)
    @p2_health = $game.player2.health
    erb(:attack)
  end

  run! if app_file == $0

end
