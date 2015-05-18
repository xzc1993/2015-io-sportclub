class UserCourse
  include Mongoid::Document


  belongs_to :user
  validates :user, :presence => true


  belongs_to :course
  validates :course, :presence => true

  field :dateSigned, type: Time
end
