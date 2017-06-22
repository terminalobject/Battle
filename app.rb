#app.rb
require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:Player_1])
    $player_2 = Player.new(params[:Player_2])

    redirect to '/play'
  end

  get '/play' do
    @player1 = $player_1.player_name
    @player2 = $player_2.player_name
    erb(:play)
  end

  get '/attack' do
    @player1 = $player_1
    @player2 = $player_2
    @player1.attack(@player2)
    erb(:attack)
  end

  run! if app_file == $0

end
