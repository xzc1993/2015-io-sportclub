class Event
  include Mongoid::Document
  has_many :event_days	
  field :title, type: String
  field :notes, type: String
  field :date, type: Date
end
