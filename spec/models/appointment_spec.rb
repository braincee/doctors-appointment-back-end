require 'rails_helper'

RSpec.describe Appointment, type: :model do
  describe 'Appointment model' do
   appointment1 = Appointment.new(city: 'nairobi', start_date: '02-01-2008', end_date: '04-09-2022',doctor_id: 1)
    subject do
        Appointment.new(city: 'nairobi', start_date: '02-01-2008', end_date: '04-09-2022',doctor_id: 1)
    end
    before { subject.save }


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