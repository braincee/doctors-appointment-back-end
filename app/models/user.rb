class User < ApplicationRecord
  has_many :appointments, dependent: :destroy
  validates :username, presence: true, length: { minimum: 3, maximum: 50 }
  validates :email, uniqueness: true, presence: true
end
