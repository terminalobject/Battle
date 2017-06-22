#app.rb
require 'sinatra/base'


class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:Player_1] = params[:Player_1]
    session[:Player_2] = params[:Player_2]

    redirect to '/play'
  end

  get '/play' do
    @player1 = session[:Player_1]
    @player2 = session[:Player_2]
    @player1_HP = "100"
    @player2_HP = "100"
    erb(:play)
  end

  run! if app_file == $0

end
