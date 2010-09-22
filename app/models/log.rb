class Log
  include Mongoid::Document
  field :nr
  field :dive_site
  field :date, :type => Date
  field :depth, :type => Float
  field :bottom_time, :type => Integer
  field :notes
  field :buddy
end