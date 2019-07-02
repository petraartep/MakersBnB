ENV["RACK_ENV"] ||= "development"

require 'data_mapper'
require 'sinatra'
require 'sinatra/base'
require 'dm-postgres-adapter'
require_relative '../db/data_mapper_setup'


class MakersBnB < Sinatra::Base

  get '/' do
    user = User.create(
      name: 'Jack',
      email: 'jd@chitter.com',
      password: 'shhhh'
    )
    erb :index
  end

  get  '/user/:user_id/space/new' do
    @user = User.get(params[:user_id])
    p @user
    @user_id = params[:user_id]
    erb :"/space/new"
  end

  post '/user/:user_id/space/new' do
    p params[:user_id]
    p "made it to this page"

    user = User.get(params[:user_id])
    user.spaces.create(name: params[:name],
                      description: params[:description],
                      price: params[:price],
                      available_from: params[:available_from],
                      available_to: params[:available_to])
    redirect "/user/#{user.id}/space"
  end


  get '/user/:user_id/space' do
    p params[:user_id]

    @user = User.get(params[:user_id])
    erb :"/space/user_space"    
  end



  run! if app_file == $0
end
