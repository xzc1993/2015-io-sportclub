class User
  include Mongoid::Document
  include ActiveModel::SecurePassword

  before_save { email.downcase! }

  field :username, :type => String
  field :email, :type => String
  field :password_digest, :type => String

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :username, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }
  
  has_secure_password

end
