class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor
  validates :city, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  
end
