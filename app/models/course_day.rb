class CourseDay
  include Mongoid::Document

  field :date, type: Date
  field :time_begin, type: Time
  field :time_end, type: Time

  belongs_to :course
  validates :course, :presence => true
end
