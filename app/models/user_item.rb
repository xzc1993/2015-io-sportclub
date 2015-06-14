class UserItem
  include Mongoid::Document


  belongs_to :user
  validates :user, :presence => true


  belongs_to :item
  validates :item, :presence => true

  field :dateRented, type: Time
end
