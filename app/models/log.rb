class Log
  include Mongoid::Document
  field :nr
  field :date, :type => Date
  field :dive_site
  field :location
  field :depth, :type => Float
  field :bottom_time, :type => Integer
  field :notes
  field :buddy
  
  validates :nr, :presence => true
end