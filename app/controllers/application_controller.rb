require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
    #    @team_name = params[:team][:name]
         @team = Team.new(params[:team])
     
        params[:team][:heros].each do |hero|
            # binding.pry
            Hero.new(hero)
        end
        @heros = Hero.all

        erb :team
    end


end