require 'data-mapper'
require 'dm-core'
require 'dm-timestamps'

class Booking
  include Datamapper::Resource
  property :id, Serial
  property :date, DateTime
  property :status, String
  
  belongs_to :user
  belongs_to :space
end
