class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor
  validates :city, :appointment_time, :user_id, :doctor_id, presence: true
end
