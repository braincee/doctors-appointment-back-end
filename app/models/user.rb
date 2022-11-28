class User < ApplicationRecord
  has_many :appointments, dependent: :destroy
  validates :username, precence: true, length: { minimum: 3, maximum: 50 }
end
