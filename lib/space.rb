require 'data_mapper'
require 'dm-core'
require 'dm-timestamps'

class Space
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :description, String
  property :price, Integer
  property :available_from, Date
  property :available_to, Date

  has n, :booking
  belongs_to :user

end