class Event < ActiveRecord::Base
  has_many :participants
  has_many :users, :through => :participants
  has_many :occurences
  
  accept_nested_attributes_for :occurences, :allow_destroy => true
end
