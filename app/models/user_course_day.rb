class UserCourseDay
  include Mongoid::Document

  belongs_to :user
  validates :user, :presence => true

  belongs_to :course_day
  validates :course_day, :presence => true
end
