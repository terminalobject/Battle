#app.rb
require 'sinatra/base'
require 'shotgun'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  # enable :sessions
  before do
    @game = Game.instance
  end
  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:Player_1])
    player2 = Player.new(params[:Player_2])
    @game = Game.create(player1, player2)
    redirect to '/play'
  end

  get '/play' do
    redirect to '/endgame' if @game.player1.dead? || @game.player2.dead?
    erb(:play)
  end

  get '/attack' do
    @game.attack
    @game.switch_turn
    erb(:attack)
  end

  get '/endgame' do
    erb (:endgame)
  end
  run! if app_file == $0

end
