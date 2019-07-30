class User < ApplicationRecord
  has_many :carts, dependent: :destroy
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
end
