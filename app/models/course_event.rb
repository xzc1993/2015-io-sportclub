class CourseEvent
  include Mongoid::Document

  has_many :course_days

  field :title, type: String
  field :minimum, type: Integer

  belongs_to :course
  validates :course, :presence => true
end
