require 'rails_helper'

RSpec.describe Appointment, type: :model do
  describe 'Appointment model' do
    subject do
      Appointment.new(city: 'nairobi', appointment_time: '04-09-2022', doctor_id: 1)
    end

    before { subject.save }
    it 'check the appointment is not blank' do
      subject.appointment_time = nil
      expect(subject).to_not be_valid
    end

    describe 'Associations' do
      it 'has many users' do
        assc = described_class.reflect_on_association(:user)
        expect(assc.macro).to eq :belongs_to
      end
      it 'has many appointments' do
        assc = described_class.reflect_on_association(:user)
        expect(assc.macro).to eq :belongs_to
      end
    end
  end
end
