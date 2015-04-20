class Course
  include Mongoid::Document
  include Mongoid::Paperclip

  field :name, type: String
  field :description, type: String

  has_mongoid_attached_file :photo,
                            :styles => { :small => '100x100#', :medium => '250x250#', :large => '500x500#' }

  validates_attachment_content_type :photo,
                                    :content_type => ['image/jpg', 'image/jpeg', 'image/png']
end
