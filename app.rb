#app.rb
require 'sinatra/base'


class Battle < Sinatra::Base
  # get '/' do
  #   'Testing infrastructure working!'
  # end
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
    erb(:play)
  end

  run! if app_file == $0

end
