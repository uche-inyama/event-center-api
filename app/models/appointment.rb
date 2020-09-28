class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :center

  # validates :user_id, presence: true
  # validates :center_id, presence: true
  validates :username, presence: true
  validates :city, presence: true
  validates :hall, presence: true
  validates :date, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX },
                    # uniqueness: { case_sensitive: false }
end
