class Admin < ActiveRecord::Base
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true
  validates :password, length: {minimum: 6}
  validates :password_confirmation, presence: true
  before_save :create_remember_token

  private
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end