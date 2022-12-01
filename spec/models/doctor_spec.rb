require 'rails_helper'

RSpec.describe Doctor, type: :model do
  before :each do
    @user = User.create(username: 'steve', email: 'steve@gmail.com')
    @doctor = Doctor.create(user_id: @user.id, name: 'Dr Steve', speciality: 'Dentist', fee: 200,
                            image: Rack::Test::UploadedFile.new('spec/models/test.png', 'image/png'))
  end

  context 'model validations' do
    it 'should be valid' do
      expect(@doctor).to be_valid
    end

    it 'should be invalid without no speciality name' do
      @doctor.speciality = nil
      expect(@doctor).to_not be_valid
    end

    it 'should be invalid without no doctor name' do
      @doctor.name = nil
      expect(@doctor).to_not be_valid
    end

    it 'should be invalid without no image given' do
      @doctor.image = Rack::Test::UploadedFile.new('spec/models/test.png', 'image/png')
      expect(@doctor).to be_valid
    end

    it 'should be invalid without no fee mentioned' do
      @doctor.fee = nil
      expect(@doctor).to_not be_valid
    end

    it 'should be valid with a fee' do
      @doctor.fee = 10
      expect(@doctor).to be_valid
    end
  end
end
