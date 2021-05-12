class User < ApplicationRecord
  has_many :appointments
  validates :username, presence: true
  validates :username, uniqueness: true
end
