class EventDay
  include Mongoid::Document

  field :date, type: Date
  field :time_begin, type: Time
  field :time_end, type: Time
  field :body, type: String

  belongs_to :event
  validates :event, :presence => true
end
