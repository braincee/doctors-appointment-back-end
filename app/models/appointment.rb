class Appointment < ApplicationRecord
  validates :city, presence: true
  validates :appointment_time, presence: true
end
