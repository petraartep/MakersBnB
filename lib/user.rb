require 'data_mapper'
require 'dm-core'
require 'dm-timestamps'

class User
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :email, String, :unique => true
  property :password, String

  has n, :bookings
  has n, :spaces
end
