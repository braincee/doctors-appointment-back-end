class DoctorSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :user_id, :name, :fee, :speciality, :image
  has_many :appointments
  def image
    rails_blob_path(object.image, only_path: true) if object.image.attached?
  end
end

