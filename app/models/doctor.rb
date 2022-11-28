class Doctor < ApplicationRecord
  validates :name, presence: true, length: { in: 3..50, message: 'Name\'s length should be in range of 3 to 50' }
  validates :speciality, presence: true,
                         length: { in: 3..100, message: 'Speciality\'s length should be in range of 3 to 100' }
  validates :image, presence: true
  validates :fee, presence: true
end
