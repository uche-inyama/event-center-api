class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :center
  validates :username, presence: true
  validates :email, presence: true
  validates :city, presence: true
  validates :hall, presence: true
end
