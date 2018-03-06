# my_app.rb
require 'sinatra/base'

class Battle < Sinatra::Base
  # ... app code here ...

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player1 = params[:Player_1_name]
    @player2 = params[:Player_2_name]
    session[:message] = "#{@player1} vs #{@player2}"
    redirect('/play')
  end

  get '/play' do
    @message = session[:message]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
