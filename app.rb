require 'sinatra/base'
# This controller class will handle the input forms and output template
class App < Sinatra::Base
  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @name = params[:name]
    @coach = params[:coach]
    @point_guard = params[:pg]
    @shooting_guard = params[:sg]
    @small_forward = params[:sf]
    @center = params[:c]
    @power_forward = params[:pf]
    erb :team
  end
end
