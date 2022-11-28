class User < ApplicationRecord
  validates :username, precence: true
end
