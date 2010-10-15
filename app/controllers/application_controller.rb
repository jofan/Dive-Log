class ApplicationController < ActionController::Base
  protect_from_forgery
  
  # TODO: When user settings are in place, check if imperial or metric
  # {:short => 'ft', :singular => 'foot', :plural => 'feet'}
  UNIT_LENGTH = {:short => 'm', :singular => 'meter', :plural => 'meters'}
  UNIT_TIME   = {:short => 'min', :singular => 'minute', :plural => 'minutes'}
  
  # TODO: Use types, they will ultimately decide the design of add and edit forms
  TYPES = %w[Cave Deep Reef Tech Training Wreck]
  
end
