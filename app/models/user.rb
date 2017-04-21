class User < ApplicationRecord
  has_many :appearances
  has_secure_password
end
