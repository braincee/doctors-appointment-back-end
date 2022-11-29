class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :city, :start_date, :end_date, :doctor_id, :user_id
  belongs_to :user
  belongs_to :doctor
end
