require 'data_mapper'
require 'dm-postgres-adapter'

require_relative '../lib/user.rb'

# this app name will be the prefix to the database
APP_NAME = 'makers_bnb'

#todo - add model files here


DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/#{APP_NAME}_#{ENV['RACK_ENV']}")

#This checks the models for validity and initializes all properties associated with relationships.
DataMapper.finalize

#create tables if they don't exist
DataMapper.auto_upgrade!
