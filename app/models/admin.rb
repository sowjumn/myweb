class Admin < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  validates :password, length: {minimum: 6}
  has_secure_password
end