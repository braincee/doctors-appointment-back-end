class Api::V1::DoctorsController < ApplicationController
  def index
    @doctors = Doctor.includes(:appointments).order('created_at desc')
    if @doctors
      render json: { status: 'Success', data: @doctors, message: 'All doctors loaded succesfully'}, status: :ok
    else
      render json: @doctors.errors, status: :bad_request
    end

  end

  def show
    @doctor = Doctor.where(id: params[:id]).includes(:appointments)
    if @doctor
      render json: { status: 'Success', data: @doctors, message: 'Doctor successfully shown'}, status: :ok
    else 
      render json: @doctor.errors, status: :bad_request
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      render json: { status: 'Success', data: @doctor, message: 'Doctor created successfully' }, status: :created
    else 
      render json: @doctor.errors, status: :unprocessable_entity
  end

  def destroy
    @doctor = Doctor.where(id: params[:id]).includes(:appointments)
    if @doctor.destroy!
      render json: { message: 'Doctor deleted successfully', data: @doctor.id }, status: :ok
    else
      render json: @doctor.errors, status: :bad_request
  end

  def update
    @doctor = Doctor.where(id: params[:id]).includes(:appointments)
    if @doctor.update(user_params)
      render json: { message: 'Doctor Update successful', data: @doctor(user_params) }, status: :ok
    else
      render json: { message: 'unable to update user'}, status: :unprocessable_entity
  end

  def doctor_params
    params.require(:doctor).permit(:name, :fee, :image, :details)
  end
end
