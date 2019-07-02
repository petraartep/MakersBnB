ENV["RACK_ENV"] ||= "development"

require 'data_mapper'
require 'sinatra'
require 'sinatra/base'
require 'dm-postgres-adapter'
require_relative '../db/data_mapper_setup'


class MakersBnB < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  get '/user/new' do
    erb :signup
  end

  post '/users' do
    user = User.create(
    :name => params[:name],
    :email => params[:emailaddress],
    :password => params[:password])
    redirect '/user/login'
  end

  get '/user/login' do
    erb :login
  end

  post '/user/login' do
    user = User.get(:email => params[:emailaddress])
    redirect "/users/#{user.id}"
  end

  get '/users/:user_id' do
    @user = User.get(params[:user_id])
    erb :userpage
  end

  run! if app_file == $0
end
