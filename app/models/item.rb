class Item
  include Mongoid::Document
  include Mongoid::Paperclip
  field :name, type: String
  field :quantity, type: Integer
  field :category, type: String

  has_mongoid_attached_file :photo
end
