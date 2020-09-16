require "digest/sha2"

class User < ApplicationRecord
  has_secure_password
  validates :firstName, presence: true
  validates :lastName, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true, length: {minimum: 6}, allow_nil: true

  def hashPassword(password)
    hash = Digest::SHA2.hexdigest(password)
  end
  #has_one_attached: :file
end
