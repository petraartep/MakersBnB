require 'data-mapper'
require 'dm-core'
require 'dm-timestamps'

class User
  include DataMapper::Resource

  property :id, Serial
  property :email, String, :unique => true
  property :password, String
  property :name, String

  has n, :bookings
  has n, :spaces
end
