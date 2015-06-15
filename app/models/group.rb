class Group
  include Mongoid::Document
  has_and_belongs_to_many :users
  field :name, type: String
  field :description, type: String
end
