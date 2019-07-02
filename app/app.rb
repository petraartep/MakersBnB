ENV["RACK_ENV"] ||= "development"

require 'data_mapper'
require 'sinatra'
require 'sinatra/base'
require 'dm-postgres-adapter'
require_relative '../db/data_mapper_setup'


class MakersBnB < Sinatra::Base

  get '/' do
    erb :index
  end

  get  '/user/:id/space/new' do
    @user_id = :id
    erb :"/space/new"
  end

  post '/user/:id/space/new' do
    user = User.get(params[:id])
    user.space.create(name: params[:name],
                      description: params[:description],
                      price: params[:price],
                      available_from: params[:available_from],
                      available_to: params[:available_to])
    redirect "/user/#{user.id}/space"
  end


  get 'user/:id/space/' do
    @user = User.get(params[:id])
    erb :"/space/user_space"    
  end





  run! if app_file == $0
end
