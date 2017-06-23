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
    player1 = Player.new(params[:Player_1])
    # p player1
    player2 = Player.new(params[:Player_2])
    # p player2
    $game = Game.new(player1, player2)
    # p $game.player1.player_name
    redirect to '/play'
  end

  get '/play' do
    # p $game.player1.player_name
    @player1 = $game.player1.player_name
    @player2 = $game.player2.player_name
    @p1_health = $game.player1.health
    @p2_health = $game.player2.health
    redirect to '/endgame' if $game.player1.dead? || $game.player2.dead?
    erb(:play)
  end

  get '/attack' do
    @player1 = $game.player1.player_name
    @player2 = $game.player2.player_name
    $game.attack
    $game.switch_turn
    @p1_health = $game.player1.health
    @p2_health = $game.player2.health
    erb(:attack)
  end

  get '/endgame' do
    erb (:endgame)
  end
  run! if app_file == $0

end
