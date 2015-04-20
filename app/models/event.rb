class Event
  include Mongoid::Document
  field :title, type: String
  field :notes, type: String
  field :date, type: Date
end
