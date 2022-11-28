class Appointment < ApplicationRecord
  validates :city, presence: true
end
