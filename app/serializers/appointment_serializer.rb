class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :city, :appointment, :doctor_id, :user_id
  belongs_to :user
  belongs_to :doctor
end
