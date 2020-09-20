class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :center
  validates :username, presence: true,
                       uniqueness: true

  validates :city, presence: true
  validates :hall, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
end
