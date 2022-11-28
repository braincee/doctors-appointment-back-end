class Appointment < ApplicationRecord
  
  belongs_to :user
  validates :city, presence: true
  validates :appointment_time, presence: true
end
