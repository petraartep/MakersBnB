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

  get '/user/new' do
    erb :signup
  end

  post '/users' do
    erb :signup_successful
  end


  run! if app_file == $0
end
