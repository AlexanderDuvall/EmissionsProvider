class User < ApplicationRecord
  validates :firstName, presence: true
  validates :lastName, presence: true
  validates :password, presence: true
  validates :email, presence: true, uniqueness: true

    #has_one_attached: :file
end
