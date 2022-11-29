class Api::V1::DoctorsController < ApplicationController
  def index
    @doctors = Doctor.includes(:appointments).order('created_at desc')
    if @doctors
      render json: { status: 'SUCCESS', data: @doctors, message: 'All doctors loaded succesfully'}, status: :ok
    else
      render json: @doctors.errors, status: :bad_request
    end

  end

  def show
    @doctor = Doctor.where(id: params[:id]).includes(:appointments)
    if @doctor
      render json: { status: 'SUCCESS', data: @doctor, message: 'Doctor successfully shown'}, status: :ok
    else 
      render json: @doctor.errors, status: :bad_request
  end
end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      render json: { status: 'SUCCESS', data: @doctor, message: "Doctor successfully created"}, status: :created
    else 
      render json: @doctor.errors, status: :unprocessable_entity
  end
end

  def destroy
     @doctor = Doctor.find(params[:id])
    if @doctor.destroy!
      render json: { status: "DELETED" ,message: 'Doctor deleted successfully', data: @doctor }, status: :ok
    else
      render json: @doctor.errors, status: :bad_request
  end
end

  def update
    @doctor = Doctor.where(id: params[:id]).includes(:appointments)
    if @doctor.update(doctor_params)
      render json: { success: "UPDATED", data: @doctor, message: 'Doctor updated successfully'}, status: :ok
    else
      render json: { message: 'unable to update doctor'}, status: :unprocessable_entity
  end
end

  def doctor_params
    params.require(:doctor).permit(:user_id, :name, :fee, :image, :speciality)
  end
end
