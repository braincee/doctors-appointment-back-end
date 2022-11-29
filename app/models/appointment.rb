class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor
  validates :city, :start_date, :end_date, :user_id, :doctor_id, presence: true
  
end
