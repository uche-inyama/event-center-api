class Appointment < ApplicationRecord
  validates :username, presence: true
  validates :email, presence: true
  validates :city, presence: true
  validates :hall, presence: true
end
